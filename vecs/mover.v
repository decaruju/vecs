module vecs

pub fn mover (state &State) {
	for entity in state.with_components(["Physics", "Position"]) {
		entity.get_component<Position>().x += 1// += entity.get_component<Physics>().x_speed
		//entity.get_component<Position>().y += entity.get_component<Physics>().y_speed
	}
}