# Verification target: Chevalley Complexity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc32d4255acefb2564af50d0c658288326d98ff4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SuccPred.WithBot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.CoeffMem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.WellFounded` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.ConstructibleSet` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Polynomial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DegreeType](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degreetype.md) | 78 | `declaration-track:20ebdbcfbe2dbc13092e78f6e4e67119b38ef4daf005c08b7450bf15110acda0` |
| 2 | `structure` | [InductionObj](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/inductionobj.md) | 84 | `declaration-track:5bde8e09891e5e20b829cbb28edf9cfd9c0d154632987ffbe54984786b34f4a5` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/instance.md) | 90 | `declaration-track:12695eebd1ea17d5e0d73378f9b702902f65a9383a6b42a181bcbf7891f4b26c` |
| 4 | `def` | [coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/coeffsubmodule.md) | 98 | `declaration-track:3c9f2c8270664a3fe229fa3d733f6b6fcdf2b0b326fb5b2ca40d28a47edba4f6` |
| 5 | `lemma` | [coeffSubmodule_mapRingHom_comp](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/coeffsubmodule-mapringhom-comp.md) | 101 | `result-track:958307b98c3cfe3ab6303196bdd3976b6780b762957a96e323d6f0c14a79056a` |
| 6 | `lemma` | [coeff_mem_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/coeff-mem-coeffsubmodule.md) | 109 | `result-track:40abf6c6bfbd11c9cf47129e0d1824e7d5a2ce3b4933112c91ba0373c356f60c` |
| 7 | `lemma` | [one_mem_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/one-mem-coeffsubmodule.md) | 113 | `result-track:f54ae3f27dc0669cd496a622438a05be078d64524897b941c5f28ae9b21e8f72` |
| 8 | `lemma` | [one_le_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/one-le-coeffsubmodule.md) | 115 | `result-track:2aaaa39df8aa1c5a52dd0fec4902d894bd85a64ba0afb0037b5727a77812dfbb` |
| 9 | `def` | [degree](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degree.md) | 122 | `declaration-track:8c0ba82015b5569433d05c9116197776168d852860d622c2f344ddc51b8d4bd3` |
| 10 | `lemma` | [ofLex_degree_fst](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/oflex-degree-fst.md) | 125 | `result-track:a32709af2358d45bb082e65a91879028c7ac2f6638ef9df64fba901f77b025c0` |
| 11 | `lemma` | [ofLex_degree_snd](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/oflex-degree-snd.md) | 127 | `result-track:5966766706a5b3c9fc00a4667f8e430efe1a9e778f5c9063f4a2bbd945d449bb` |
| 12 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound.md) | 134 | `declaration-track:7a5d7d039d8058750c8a7e73dc765881a8c678c4629887e3ca329647f2792600` |
| 13 | `def` | [powBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/powbound.md) | 140 | `declaration-track:886ff5de6dee525f36bf284f5c1da8ec59f52250af980d297684df714aee4fe6` |
| 14 | `lemma` | [powBound_ne_zero](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/powbound-ne-zero.md) | 142 | `result-track:c32dbf0c8dd72fc37901ee37d40d93e610f1ea63cfcfc45341dd00d9fe5216f5` |
| 15 | `def` | [Statement](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/statement.md) | 147 | `declaration-track:0399d24119420918ad5b49c97ccfa96f45a0a47107f0160340c2bb216014c0e5` |
| 16 | `lemma` | [induction_structure](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/induction-structure.md) | 170 | `result-track:1a2003e74468b6db5ab971bcdeff5fe6378168541c1ae393b1ffa6c60893606b` |
| 17 | `lemma` | [induction_aux](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/induction-aux.md) | 270 | `result-track:c721bc6a293d9141e610a09b00b5bff9365d26cce07017f8a7606ff8da9d3fef` |
| 18 | `lemma` | [statement](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/statement-source-edition-2.md) | 422 | `result-track:78b278ba66242f39ae59cf8bfefe74416487a7d21c38eb90ef0a658878be8481` |
| 19 | `lemma` | [chevalley_polynomialC](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/chevalley-polynomialc.md) | 549 | `result-track:2ce43c25cea12eb565718b188246d41233083b469e63420b6c28c58df2c65745` |
| 20 | `def` | [numBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound-source-edition-2.md) | 583 | `declaration-track:c4119f69007c4dcfae0eb566188a1417f75cca63e52160fac91e413997d2f8e8` |
| 21 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-source-edition-3.md) | 589 | `declaration-track:a515c35051ac14a1a57a95487783aa070ce1eac579a18ac16a69823a1f5f8515` |
| 22 | `lemma` | [degBound_zero](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-zero.md) | 595 | `result-track:c47afc99427c35d4bb848d71efea829955429f50e73b9135e9f5a1d811e1f647` |
| 23 | `lemma` | [numBound_zero](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound-zero.md) | 596 | `result-track:8933d3afb72af98255f76f85df47cf7e59b1b76a2de0ac84220ff8652cc5bb6c` |
| 24 | `lemma` | [degBound_succ](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-succ.md) | 599 | `result-track:1348c605561b104a4d21f0f4634a81d6e32beaa1c94d7486ff5c09e6f04831cb` |
| 25 | `lemma` | [numBound_succ](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound-succ.md) | 604 | `result-track:3a49bac650c2ed561b9d2572722d73f5d3a4dca6f346fc110dcad1d553ae8e75` |
| 26 | `lemma` | [degBound_casesOn_succ](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-caseson-succ.md) | 610 | `result-track:8dfcd7e589cb9c7585d5f005baf3c2a058d1eff2ac9dae9397bdaededf0fd3db` |
| 27 | `lemma` | [numBound_casesOn_succ](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound-caseson-succ.md) | 619 | `result-track:f34ae09f6720c1aec6e8f4a5ec2a3fed22335a026941f96f12a304ad0c1e863f` |
| 28 | `lemma` | [degBound_le_degBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-le-degbound.md) | 634 | `result-track:f1f927b7e26ac34309259cd014f26ae0ab3d285baaeba0ef0d56637a867f3470` |
| 29 | `lemma` | [numBound_mono](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound-mono.md) | 642 | `result-track:2ef0cc2f66239faaa5cecf92f9b01510d21b55eec7a225e713f10319d1bd3f47` |
| 30 | `lemma` | [degBound_pos](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-pos.md) | 654 | `result-track:c4e83e6a788b04be211386ab09f57472842158e362ec4951f4b81ff6dd9d6692` |
| 31 | `lemma` | [chevalley_mvPolynomialC](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/chevalley-mvpolynomialc.md) | 662 | `result-track:aa2ce08e9ac722023d7ab01223837bceafc5a9c741eccdbcc9c57a2ca4f1a883` |
| 32 | `def` | [numBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/numbound.md) | 775 | `declaration-track:997f72280681785385e60054efcef8f6a8039b7c9026d7438f71cb58d5809876` |
| 33 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/degbound-source-edition-2.md) | 780 | `declaration-track:8162f49964550a8a3aa6a0d5e5aea02b9744e1e1dd1b651e07809e41c513fc73` |
| 34 | `lemma` | [chevalley_mvPolynomial_mvPolynomial](../../../../CommutativeAlgebra/ChevalleyComplexity.lean/declarations/chevalley-mvpolynomial-mvpolynomial.md) | 795 | `result-track:c6895b826466b74fa21323f0d801c4a9e37deda80f44f40471d79c18e0718c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ab9c49a91b31b57c84ef752f0107c6cba0fffd87c520c8dc326debfda0e74c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
