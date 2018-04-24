defmodule Sofor do
  import Ecto.Query
  import Ecto.Repo
  alias Sofor.Driver
 def akt(id) do
  query = from d in "drivers",
  where: d.id == ^id ,
  select: {d.name, d.email, d.plate, d.phone_num}
  Sofor.Repo.all(query)
end
def uj(name, phone_num, email, plate) do
  member = %Sofor.Driver{name: name, phone_num: phone_num, email: email, plate: plate}
  Sofor.Repo.insert(member)
end

def all do
  query = from d in "drivers",
  where: d.id > 0 ,
  select: {d.name, d.email, d.plate, d.phone_num}
  Sofor.Repo.all(query)
end


end
