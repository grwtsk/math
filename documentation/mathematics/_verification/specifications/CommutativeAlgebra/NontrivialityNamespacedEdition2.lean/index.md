# Verification target: Nontriviality Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83d69c2ddb6b89634c402b8ac053507c56d8432e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83d69c2ddb6b89634c402b8ac053507c56d8432e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Nontriviality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/test-sorry.md) | 13 | `declaration-track:b4fadf22e017b0bc2c9b317bf1f4f23b3c5922d05626f8f537ace867ee297a48` |
| 2 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-2.md) | 18 | `declaration-track:280146ca2e9c9b6e2dd7745619387d4b78cbd81fa4bd98b8422cdccdcbad9676` |
| 3 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-12.md) | 26 | `declaration-track:ff170e9291af580b9aaf13e0d8e47048033c4a171cf3ad419d3e717822da88b2` |
| 4 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-11.md) | 33 | `declaration-track:c6be593c94cf5c6a80c054458854bf03b1bab8e55208e3660044e37dfae2a040` |
| 5 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example.md) | 38 | `declaration-track:1e2b0d3b22992fdcf5f37231a12b3b46fa6c8f6c28572ea0929b0543db5fd540` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-7.md) | 43 | `declaration-track:8e9a9ef0e16fffaacdd4b58fbb9c1502638ec16192cc15174ee0d76a83d7b133` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-4.md) | 47 | `declaration-track:74c72e38cd87cb67acb0de9c50a0ccb22a1213ac90b32944f78469061184c53d` |
| 8 | `def` | [EmptyOrUniv](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/emptyoruniv.md) | 55 | `declaration-track:e7e18c7af55f261992426ac627ec174133e44d89d83717fa2cecee7e658e9851` |
| 9 | `theorem` | [Subsingleton.set_empty_or_univ](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/subsingleton-set-empty-or-univ-source-edition-2.md) | 58 | `result-track:ca36dc4ceb932213b1cde83eef69315f4589b664f18bb378f6eb9c760a85d4ac` |
| 10 | `theorem` | [Subsingleton.set_empty_or_univ'](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/subsingleton-set-empty-or-univ.md) | 61 | `result-track:ad644790fd87b89795a292102ec6647bc3c3c267c08ac87186ee37d447a35c2f` |
| 11 | `theorem` | [Set.empty_union](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/set-empty-union.md) | 64 | `result-track:3c43aadb7eb2c2b43d8df9b5d7c81013ce1c7ba9cd9cfe730110dc541ad0a41a` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-6.md) | 66 | `declaration-track:8a54396a1a719366b07b36a74ad07baabaebc81ccb843f33381fd6b02feb62e3` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-3.md) | 75 | `declaration-track:5ea6d309b429f492301613446fcc9debe45b9fd8f497d771a430117e35959e84` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-10.md) | 85 | `declaration-track:ad13be083fecbb7bd757814de9dfc605ec8ade6ef3810c1672b04464f506c1de` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-8.md) | 93 | `declaration-track:9b78e3f1add0616ee4fec1169d8600ecc059d63b76d963e37516ad3b74e4a182` |
| 16 | `class` | [Foo](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/foo.md) | 98 | `declaration-track:c195c8119148e91dea6e24190fa93d47b754c25af424f050a364653dccc49d84` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:ecdd9d4cd02c7254b66ebbbab34589b98dccf5698b36b22bbfd479cb327a6a28` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-9.md) | 101 | `declaration-track:aac611e72447c7723aca1112edc4cb7e3d8674082419ac42adf9d89086680062` |
| 19 | `def` | [R](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/r.md) | 104 | `declaration-track:80cc6285dcfb3dfefa9337eefea3a1aa37829959b97c5d1e09972b15a60aa031` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/instance.md) | 105 | `declaration-track:16c60a54f0017f105b3a29bce36ba377ca109fccfa0254555b429a59aff23a3e` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityNamespacedEdition2.lean/declarations/example-source-edition-5.md) | 107 | `declaration-track:7bdeaa520ba2b4e5f09eed5783de5f3a3f500d780ff1b71db6eaa718dac785dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc6ecadb32b8a70f1a7706f4255cbfc92625e4d2bc824dc519f5afc85337a9b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
