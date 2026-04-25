create table if not exists user_data (
  user_name text not null,
  key text not null,
  value text not null,
  primary key (user_name, key)
);
alter table user_data enable row level security;
create policy "Allow all" on user_data for all using (true) with check (true);
