import vecs

mut components := map[string]vecs.Component{}
components['vecs.Physics'] = vecs.Physics{0, 0}
components['vecs.Position'] = vecs.Position{0, 0}
components['vecs.Gravity'] = vecs.Gravity{}

particle := vecs.make_entity(components)
entities := [&particle]

state := vecs.State{
	entities: entities
	systems: [vecs.mover, vecs.printer, vecs.physics_system]
}

for _ in 0 .. 10 {
	state.tick()
}
