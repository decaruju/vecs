module vecs

import rand

struct Entity{
  pub mut:
  id string 
  components map[string]Component
}

pub fn (entity &Entity) has_components(component_names []string) bool {
   return component_names.all(it in entity.components.keys())
}

pub fn (entity &Entity) get_component<T>() T {
	component := entity.components[T.name]
    if component is T {
		return *component
	} return T{}
}


pub fn make_entity(component_map map[string]Component) Entity {
	return Entity{
		id: rand.uuid_v4(),
		components: component_map,
	}
}