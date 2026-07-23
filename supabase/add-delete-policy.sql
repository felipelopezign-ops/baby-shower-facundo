-- Si ya corriste schema.sql antes, ejecuta SOLO esto en SQL Editor:

drop policy if exists "Public delete reservations" on public.reservations;
create policy "Public delete reservations"
  on public.reservations
  for delete
  to anon, authenticated
  using (true);
