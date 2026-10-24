# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f710a89fd1ebdf620e410e268ac61cccfde2992",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f710a89fd1ebdf620e410e268ac61cccfde2992`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.UpperLower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/hasupperlowerclosure--54778b9669f91cce7b7c9eaa.md) | 40 | `declaration-track:54778b9669f91cce7b7c9eaabc4b40b4cd8f4efacc1f6207b6ed681460cb25e0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/instance--2354c45988a992d21236363f.md) | 51 | `declaration-track:2354c45988a992d21236363f0e09ddd9f2152ea361816e8da007f9cf6d3bd855` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/isupperset-closure--e77a1099edbdb7937e20c156.md) | 72 | `result-track:e77a1099edbdb7937e20c15627484876a44cdaa4ebb5a30aee884f7b054ed7b2` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/islowerset-closure--ef533c9b40c8fb6b64495b79.md) | 76 | `result-track:ef533c9b40c8fb6b64495b79b44edaa5240c9239908f68e13aa5a0e0b7d76f52` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/isopen-upperclosure--6fe677031784b9bf5d405296.md) | 80 | `result-track:6fe677031784b9bf5d405296bec07a4d4f39b4f298471ba042391a9a41f75063` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/isopen-lowerclosure--38eb43de0b5d2a82eb95cc9f.md) | 84 | `result-track:38eb43de0b5d2a82eb95cc9fcdceb2dc4da43a78b51c31e80881441690f8cfea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/instance--c5bbb8e8b636c0e256a4cebf.md) | 88 | `declaration-track:c5bbb8e8b636c0e256a4cebf58ebd13630abbfe64b468b1896293caf1d726927` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/isupperset-interior--db4a0586a71f08623eb10665.md) | 109 | `result-track:db4a0586a71f08623eb1066506a5d241c19e7d400d3a2134d6e1f8954b1c9f18` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/islowerset-interior--768f89ad383b1541d0d2082b.md) | 114 | `result-track:768f89ad383b1541d0d2082ba702e45af053e1d795f64d0c088289eba3574f24` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantcf58ed9d243cf30d7e91e69ff6889e3dad2676d716d01b87cb2ef48e492b1401.lean/declarations/set-ordconnected-interior--44762cc247dae3e5c532c124.md) | 118 | `result-track:44762cc247dae3e5c532c1246be08610fd0d0e9aae4b2f02a81e655aa7e00c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
