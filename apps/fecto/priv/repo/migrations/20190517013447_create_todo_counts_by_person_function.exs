defmodule Fecto.Repo.Migrations.CreateTodoCountsByPersonFunction do
  use Ecto.Migration

  def up do
    execute """
      create or replace function todo_counts_by_person(_company_id bigint)
      returns table(
          person_id bigint,
          company_id bigint,
          todos_count bigint
      ) as $$
      declare
      begin
          return query
          select
              p.id as person_id,
              p.company_id,
              count(1) as todos_count
          from persons p
          join todos t
              on t.person_id = p.id
          where p.company_id = _company_id
          group by 1, 2;
      end
      $$
      language plpgsql;
    """
  end

  def down do
    execute """
      drop function todo_counts_by_person(bigint);
    """
  end
end
