# Verification target: GRWTSK.Topology.GeneralTopology.PresheafOfFunctions.Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3030cadc661094a6963cc0698624a8d81bca09a3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3030cadc661094a6963cc0698624a8d81bca09a3`.

Source path: `GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [presheafToTypes](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotypes--094e3ed378d31ff0e2da50db.md) | 33 | `declaration-track:094e3ed378d31ff0e2da50db52b63674c24fd1a95a48f6c458436cd20493ce6f` |
| 2 | `theorem` | [presheafToTypes_obj](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotypes-obj--a6f0f36519708c40c8a76ee7.md) | 42 | `result-track:a6f0f36519708c40c8a76ee7e02c82f8947139b0c0e45270e3fe3ed605786eee` |
| 3 | `theorem` | [presheafToTypes_map](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotypes-map--9f8ad49296463bd2a55a2c8d.md) | 47 | `result-track:9f8ad49296463bd2a55a2c8da7073d44901c93c193d8794189328a578df3a034` |
| 4 | `def` | [presheafToType](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotype--93389c286c9f374b77b1725f.md) | 60 | `declaration-track:93389c286c9f374b77b1725f7c6831dc2b32af49505d3e3c181e08ff58e314e4` |
| 5 | `theorem` | [presheafToType_obj](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotype-obj--d2b19438b690eab2e0de9e6a.md) | 69 | `result-track:d2b19438b690eab2e0de9e6a94508c9be804409bb8d9a65a6a8a611ae6ad05ff` |
| 6 | `theorem` | [presheafToType_map](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotype-map--baf9cbbc83522d583c09bf5f.md) | 74 | `result-track:baf9cbbc83522d583c09bf5f4b03264b11471331c5df2e07b97aee719e2965e7` |
| 7 | `def` | [presheafToTop](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotop--8c72d06687224668baa6a52e.md) | 80 | `declaration-track:8c72d06687224668baa6a52e83053bdf141849d5f310a769c6ff58446fc63cd4` |
| 8 | `theorem` | [presheafToTop_obj](../../../../../mathematics/Topology/GeneralTopology/PresheafOfFunctions/Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304.lean/declarations/presheaftotop-obj--a073779563b30c8b6f65b4d4.md) | 84 | `result-track:a073779563b30c8b6f65b4d40d153f3a3630156529a54009bf729872b0cf7e80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
