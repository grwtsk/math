# Verification target: Reflection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4943c40794fb12c832db5e6cce552d26a25d15f3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4943c40794fb12c832db5e6cce552d26a25d15f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/seq.md) | 45 | `declaration-track:ad2e3d836ab7e330b0dfe7c04a7c05cc2bcc421dc37adc3ddc382b5f537632c5` |
| 2 | `theorem` | [seq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/seq-eq.md) | 50 | `result-track:f5ab213451188bd2367e801f97533b82ae5465b9a38fe624b752f694f099419b` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-3.md) | 60 | `declaration-track:4a62ce992978dbebc90ff359f788c6ac4b36f01c804f3c49013624c8e157f6b2` |
| 4 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/map.md) | 63 | `declaration-track:2985bbacfa8042c57f20320934ccc84ae4ee719a6ed7798b2a7afbebb42fbac3` |
| 5 | `theorem` | [map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/map-eq.md) | 73 | `result-track:aed0e01c3324450958375cd1cf0704cc55b30921400aa3aeb378f7d66a21c863` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-7.md) | 76 | `declaration-track:d50d952bdf2b92d3cdb40f165739aac255b20b154677e3b6a40c52a725ee1bb6` |
| 7 | `def` | [etaExpand](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/etaexpand.md) | 80 | `declaration-track:da53782800217dc415f4aa471eaae7bb71a90473c7128187c0cc6ad242c14d07` |
| 8 | `theorem` | [etaExpand_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/etaexpand-eq.md) | 90 | `result-track:d3a7be920cb7cdb6e305a038dc4a1cca7cd0e7f657f7c4830ec0ea47949ede69` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-8.md) | 93 | `declaration-track:ec0cfbd761be77b676db4d517da89109a414bcf10ae1e6d04b887982981a2c7f` |
| 10 | `def` | [Forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/forall.md) | 97 | `declaration-track:300f70e4f2df36f552dbec9dde1177e2a20f89c7818773da5f479e5dbaadb3dc` |
| 11 | `theorem` | [forall_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/forall-iff.md) | 108 | `result-track:91fae8097491147ca4b5fd449386a2e6ebf453b629aae2a549506b11f1d340c0` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example.md) | 114 | `declaration-track:1bebae8a5cfe7f35cc6bd4c67be6936dce900ea535f13812d1d2d5c4224a326c` |
| 13 | `def` | [Exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/exists.md) | 118 | `declaration-track:de576034f02d1697d402ecabe20fb94654ff09001163d02ffacc47847b2c9b95` |
| 14 | `theorem` | [exists_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/exists-iff.md) | 128 | `result-track:ce66e47e9fac456e5947ca7bed23be85a4defbd68b012026779fd12c675e994e` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-6.md) | 134 | `declaration-track:d026b325860e726496cd390cb503a57c5fd3b16f6c59968ce55cb93542289005` |
| 16 | `def` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/sum.md) | 138 | `declaration-track:da6aff934f5ed18fc2043d0f448288fb5ecc04228b2386c944acb3171ffcf73f` |
| 17 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/prod.md) | 147 | `declaration-track:f59ecea880b926cede99cb591447fb3e88f881e991a5104d5fd7840c3c3348b6` |
| 18 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-5.md) | 161 | `declaration-track:ba71e2cd95304bf77ce25668c9f5ac075552de1604b40013a679585808b4ba37` |
| 19 | `theorem` | [prod_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/prod-eq.md) | 164 | `result-track:429eaaf8976c7f5cf1077bb41a37a61c7126c2045a2d8e6b9882587614767b12` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-4.md) | 169 | `declaration-track:90cfd5e65cca597c433e4754995dbbefad56bbc222be614ed790fe84d2b72f40` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/example-source-edition-2.md) | 172 | `declaration-track:2b3807afcd392cff8990dff84ffede1695b8a1976b016a602cf70dc5ec85e44a` |
| 22 | `def` | [mkProdEqQ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/mkprodeqq.md) | 180 | `declaration-track:d63791c04b42624cf50325e7e2c0d48a3aa9d1767d095be86ec0a234f707cf0d` |
| 23 | `def` | [mkSumEqQ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReflectionNamespaced.lean/declarations/mksumeqq.md) | 202 | `declaration-track:33d75b2fc53c24bbd62d8270b202ce86dcf9c05f074a4343a62ff4eada6cf8a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0369086d3beb31f120b6910265137f76fb5d84b9d60cbf925a8d99149c1e04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
