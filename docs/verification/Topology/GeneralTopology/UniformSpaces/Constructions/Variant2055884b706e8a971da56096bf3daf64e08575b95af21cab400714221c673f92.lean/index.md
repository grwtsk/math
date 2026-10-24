# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Constructions.Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0c1102bfaa15dc0d17eb987968959a4fd87855",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0c1102bfaa15dc0d17eb987968959a4fd87855`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ultra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsTransitiveRel.entourageProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/istransitiverel-entourageprod--cef7b1f31a434ecec7cb5d93.md) | 37 | `result-track:cef7b1f31a434ecec7cb5d939e9e4e9cfb80098896aa7ee3da73fdd07d3dcc3d` |
| 2 | `lemma` | [IsUltraUniformity.comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/isultrauniformity-comap--979c8ccf46da9bac860b7e5b.md) | 42 | `result-track:979c8ccf46da9bac860b7e5be243c876e80c62f92373f50de9c42cdcdeebde6f` |
| 3 | `lemma` | [IsUltraUniformity.inf](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/isultrauniformity-inf--79a87cd34d388c6b61c70b7a.md) | 49 | `result-track:79a87cd34d388c6b61c70b7a9fdb3bbecf4ae167cbf6a9150d89b4e92359a6ef` |
| 4 | `instance` | [IsUltraUniformity.prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/isultrauniformity-prod--98bdda397fa3ac5c49d85ead.md) | 59 | `declaration-track:98bdda397fa3ac5c49d85eada6c36dae0cea7baa20aa1894718fc8f9a77a9fb0` |
| 5 | `lemma` | [IsUltraUniformity.iInf](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/isultrauniformity-iinf--bb1abcad987ee42d447cf699.md) | 64 | `result-track:bb1abcad987ee42d447cf69932594f314f60523f20d37b1f17551e3e00a0e2f1` |
| 6 | `instance` | [IsUltraUniformity.pi](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/declarations/isultrauniformity-pi--151a5ff966c6b899dfa8a87a.md) | 74 | `declaration-track:151a5ff966c6b899dfa8a87a61e42700f70f5d8e7f55942dda705bbcf647bc0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
