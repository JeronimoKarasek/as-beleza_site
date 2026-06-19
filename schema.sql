-- AS Beleza | prefixo: _as_beleza
create table if not exists public.leads_as_beleza (
  id uuid primary key default gen_random_uuid(),
  nome text not null,
  telefone text,
  interesse text,
  origem text default 'site',
  status text default 'novo',
  created_at timestamptz default now()
);
create table if not exists public.itens_as_beleza (
  id uuid primary key default gen_random_uuid(),
  nome text not null,
  categoria text,
  ativo boolean default true,
  preco numeric(12,2),
  descricao text,
  created_at timestamptz default now()
);
insert into public.itens_as_beleza (nome, ativo) values
  ('Cortes', true),
  ('Coloração', true),
  ('Escova', true),
  ('Manicure', true),
  ('Tratamentos', true)
on conflict do nothing;
