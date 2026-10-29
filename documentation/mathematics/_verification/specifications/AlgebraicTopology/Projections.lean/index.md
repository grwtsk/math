# Verification target: Projections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc5afd93446a0563a1791cc1d1d2916400e43f33",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant8b5964ae5c5319d990fabfeb38d1800045698ebcb166ca5a10143ed6b69fea9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/Projections.lean/index.md) · [Full source](../../../../AlgebraicTopology/Projections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc5afd93446a0563a1791cc1d1d2916400e43f33`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant8b5964ae5c5319d990fabfeb38d1800045698ebcb166ca5a10143ed6b69fea9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant8b5964ae5c5319d990fabfeb38d1800045698ebcb166ca5a10143ed6b69fea9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.Faces` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../AlgebraicTopology/Projections.lean/declarations/p.md) | 46 | `declaration-track:ab106decb283ccf9a39bad4bd0b9b285651ec476f1d4d8e33d66c742dc175b87` |
| 2 | `lemma` | [P_zero](../../../../AlgebraicTopology/Projections.lean/declarations/p-zero.md) | 50 | `result-track:f06296739f8fafc68a9bb7ac6d331cd0eff21a7d3317900eb7062aeba58ff925` |
| 3 | `lemma` | [P_succ](../../../../AlgebraicTopology/Projections.lean/declarations/p-succ.md) | 51 | `result-track:c04105c113cbc621827a3e580d9ba592ce5a6e2443bb27660e1abc16e9370a17` |
| 4 | `theorem` | [P_f_0_eq](../../../../AlgebraicTopology/Projections.lean/declarations/p-f-0-eq.md) | 55 | `result-track:ace78523bb6a9fb17d85346068a8805b95ebc93f209c02b685f3c7d5b8c09adf` |
| 5 | `def` | [Q](../../../../AlgebraicTopology/Projections.lean/declarations/q.md) | 62 | `declaration-track:a391f66dffb8c39f75285ee85202af360c3a3df157388e09d5d7014b8cb94d0a` |
| 6 | `theorem` | [P_add_Q](../../../../AlgebraicTopology/Projections.lean/declarations/p-add-q.md) | 65 | `result-track:f109454b101c87ef40ae4cf686679394f8bedbb919e8cc518650d7c674077cdb` |
| 7 | `theorem` | [P_add_Q_f](../../../../AlgebraicTopology/Projections.lean/declarations/p-add-q-f.md) | 69 | `result-track:35cdc6e3a9a6c4e6c0292ca3b054ccd95a19429e7a6903cdceea02ff8f76bf54` |
| 8 | `theorem` | [Q_zero](../../../../AlgebraicTopology/Projections.lean/declarations/q-zero.md) | 73 | `result-track:38061377e1450a4bc4deeebb851e47f4cd784e75423098b133f307c7c67776f0` |
| 9 | `theorem` | [Q_succ](../../../../AlgebraicTopology/Projections.lean/declarations/q-succ.md) | 76 | `result-track:aae35b4f8f36492457dcaa1107b0350b9cfe02dd3bffd3379811bb777a93d570` |
| 10 | `theorem` | [Q_f_0_eq](../../../../AlgebraicTopology/Projections.lean/declarations/q-f-0-eq.md) | 82 | `result-track:93097c09e924d02beb836f2af2cd3f53080914209a16bfcc61b4da0d26c97f37` |
| 11 | `theorem` | [of_P](../../../../AlgebraicTopology/Projections.lean/declarations/of-p.md) | 89 | `result-track:b5c471a83de15c935bff48dddb659ae4f9cf0609118d11ded76916faa28918b5` |
| 12 | `theorem` | [comp_P_eq_self](../../../../AlgebraicTopology/Projections.lean/declarations/comp-p-eq-self.md) | 96 | `result-track:6a4398fcb38fa25752a8210aff377f369e40ecf9cf7efef2919c4c6f12db688d` |
| 13 | `theorem` | [comp_P_eq_self_iff](../../../../AlgebraicTopology/Projections.lean/declarations/comp-p-eq-self-iff.md) | 116 | `result-track:48a8cf852f3b2dabf377717786484051955395c18bae88cdd7361c72b345dbff` |
| 14 | `theorem` | [P_f_idem](../../../../AlgebraicTopology/Projections.lean/declarations/p-f-idem.md) | 126 | `result-track:066ea06abc2fb87c868c325b1d53d49228c35e553d30373978cdcc030855f120` |
| 15 | `theorem` | [Q_f_idem](../../../../AlgebraicTopology/Projections.lean/declarations/q-f-idem.md) | 132 | `result-track:770320d630840ddb2907013f79c9e2c7bef38c762621ea2191fe7db92396d471` |
| 16 | `theorem` | [P_idem](../../../../AlgebraicTopology/Projections.lean/declarations/p-idem.md) | 136 | `result-track:6cfa6176bcbb089c03fa215540f079693256884ad719f02609afccdaa7356727` |
| 17 | `theorem` | [Q_idem](../../../../AlgebraicTopology/Projections.lean/declarations/q-idem.md) | 141 | `result-track:cae03d20c381bbdd72f908831ff735117ddd02eaa4e686e1b2684ba6f60a09df` |
| 18 | `def` | [natTransP](../../../../AlgebraicTopology/Projections.lean/declarations/nattransp.md) | 147 | `declaration-track:48069a06c78825a315d3731217846a944332e7e97ab8f268c8338e65df5fa989` |
| 19 | `theorem` | [P_f_naturality](../../../../AlgebraicTopology/Projections.lean/declarations/p-f-naturality.md) | 159 | `result-track:f76ed0ee3a17a4a664d676a79681b481c2b37022ac38e8aa911fa9459da18336` |
| 20 | `theorem` | [Q_f_naturality](../../../../AlgebraicTopology/Projections.lean/declarations/q-f-naturality.md) | 164 | `result-track:61683d81c9473a1f060545a8a818b894db6fca0c078941fffbd9206b7f69a2e5` |
| 21 | `def` | [natTransQ](../../../../AlgebraicTopology/Projections.lean/declarations/nattransq.md) | 173 | `declaration-track:3a142f56859fe7def06fa3650295b0ed135aa06b6899f6a53d4cad5afeac38c8` |
| 22 | `theorem` | [map_P](../../../../AlgebraicTopology/Projections.lean/declarations/map-p.md) | 176 | `result-track:04c3aa105187a59a20a8e307808bfa3948ea01fe4fb33e9fae3a72afb65fd47f` |
| 23 | `theorem` | [map_Q](../../../../AlgebraicTopology/Projections.lean/declarations/map-q.md) | 185 | `result-track:ef5a37bb1ac1bfb491d96c8edb221dfa0afa49a4f16830c730997f0777ff333b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c74b91aa8c6b97a67e443799065d6b0b9a011d4c167580847664956c92fbff7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant8b5964ae5c5319d990fabfeb38d1800045698ebcb166ca5a10143ed6b69fea9a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant8b5964ae5c5319d990fabfeb38d1800045698ebcb166ca5a10143ed6b69fea9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
