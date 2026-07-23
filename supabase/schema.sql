-- Ejecutar en Supabase → SQL Editor

create table if not exists public.reservations (
  gift_id text primary key,
  gift_name text not null,
  guest_name text not null,
  guest_email text not null,
  created_at timestamptz not null default now()
);

alter table public.reservations enable row level security;

drop policy if exists "Public read reservations" on public.reservations;
create policy "Public read reservations"
  on public.reservations
  for select
  to anon, authenticated
  using (true);

drop policy if exists "Public insert reservations" on public.reservations;
create policy "Public insert reservations"
  on public.reservations
  for insert
  to anon, authenticated
  with check (true);

-- Sin update/delete para anon: el regalo queda bloqueado.
