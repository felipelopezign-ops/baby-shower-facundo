# Baby Shower Facundo

Invitación + lista secreta de regalos con:

- **Supabase** → reservas compartidas y bloqueo de regalos
- **Formspree** → email a Vicente y Gabriela en cada reserva
- **Vercel** → hosting vía GitHub

## Setup rápido

### 1) Supabase
1. Crea un proyecto en [supabase.com](https://supabase.com)
2. SQL Editor → pega y corre `supabase/schema.sql`
3. Settings → API → copia **Project URL** y **anon public key**
4. Pégalos en `js/config.js`

### 2) Formspree
1. Crea un form en [formspree.io](https://formspree.io)
2. En notificaciones agrega:
   - `vicentesanmartin.fre@gmail.com`
   - `gabrielasandovalarce@gmail.com`
3. Copia el endpoint `https://formspree.io/f/xxxxx` a `js/config.js` → `FORMSPREE_ENDPOINT`

### 3) Deploy
```bash
npx vercel --yes
```
O conecta el repo en [vercel.com/new](https://vercel.com/new).

### Admin
`https://TU-DOMINIO/admin.html?key=facundo-admin-2026`

Cambia `ADMIN_KEY` en `js/config.js` si quieres.
