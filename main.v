import vecs

mut components := map[string]vecs.Component{}
components["Physics"] = vecs.Physics{0, 1}
components["Position"] = vecs.Position{0, 0}
components["Gravity"] = vecs.Gravity{}

particle := vecs.make_entity(components)
entities := [&particle]

state := vecs.State{entities: entities, systems: [vecs.mover, vecs.printer]}

state.tick()
state.tick()
state.tick()

print(state)