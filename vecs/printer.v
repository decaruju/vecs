module vecs

pub fn printer (state &State) {
	for entity in state.with_components(["Gravity"]) {
		print(entity.get_component<Position>().x)
		print(", ")
		println(entity.get_component<Position>().y)
	}
}