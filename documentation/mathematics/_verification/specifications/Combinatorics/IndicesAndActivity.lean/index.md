# Verification target: Indices And Activity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9b3bb93fd27fb04bff905e388736f566d827580",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/ThreeCoordinateRotations/Variantec4647d540fea03c/IndicesAndActivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IndicesAndActivity.lean/index.md) · [Full source](../../../../Combinatorics/IndicesAndActivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9b3bb93fd27fb04bff905e388736f566d827580`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/ThreeCoordinateRotations/Variantec4647d540fea03c/IndicesAndActivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/ThreeCoordinateRotations/Variantec4647d540fea03c/IndicesAndActivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotate3Indices](../../../../Combinatorics/IndicesAndActivity.lean/declarations/rotate3indices.md) | 46 | `declaration-track:4f949e7b3386836a02710ec716aad195d8f2cf395be210de0991484cf64bdf67` |
| 2 | `def` | [rotate3](../../../../Combinatorics/IndicesAndActivity.lean/declarations/rotate3.md) | 50 | `declaration-track:804163bd92a15447d2197bf47c561d14eef78c9beb2d580144cb957e11ac1c15` |
| 3 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-8.md) | 53 | `declaration-track:c2a49f617b8efa98ea99327eee3d9a23746c52ec2bd8e32551d202851d134176` |
| 4 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-2.md) | 54 | `declaration-track:40b0934e6b1cb3dc12718c35a840fdc4c1bfa762ec30cdc4bc33efa4b6d637fa` |
| 5 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-6.md) | 55 | `declaration-track:b893df6c635a5b6fac9bee2688ec93ac5e44ff880425c3e0bc345155ae88e169` |
| 6 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-7.md) | 57 | `declaration-track:b9c80c2a647d3ef7717c6ccc4123968301d3e2b61ad4fc4f426594161052c944` |
| 7 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example.md) | 60 | `declaration-track:3bef6cb9d1e0f7cdc5d347f74a628bd2a1d339b693ed23da0c670f6d16719019` |
| 8 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-4.md) | 63 | `declaration-track:9b2c6cf37292218a21b7891f8186db3a947e49d4d9c5bb2779a5dcbc93eb57eb` |
| 9 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-5.md) | 66 | `declaration-track:b4df8d0986deee1f9a4611fba7079675ad60682a7bc9e97fa33d9f53bdf8c420` |
| 10 | `example` | [(anonymous)](../../../../Combinatorics/IndicesAndActivity.lean/declarations/example-source-edition-3.md) | 69 | `declaration-track:89666f36ed638edb7cf9a88ff13e708a20875ffdbe973db0903d8ffaff813e07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=241affc7472eb912874809eb872b78e3346dcff98936a526d5900bd0e24cdc45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/ThreeCoordinateRotations/Variantec4647d540fea03c/IndicesAndActivity.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/ThreeCoordinateRotations/Variantec4647d540fea03c/IndicesAndActivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
