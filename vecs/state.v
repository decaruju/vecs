module vecs

type System = fn (&State)

pub struct State {
pub mut:
	entities []&Entity
	systems  []System
}

pub fn (state &State) with_components(component_names []string) []Entity {
	mut entities_with_components := []Entity{}
	for entity in state.entities {
		if entity.has_components(component_names) {
			entities_with_components << entity
		}
	}
	return entities_with_components
}

pub fn (state &State) tick() {
	for system in state.systems {
		system(state)
	}
}
