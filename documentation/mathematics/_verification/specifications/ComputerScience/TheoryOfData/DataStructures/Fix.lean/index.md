# Verification target: Fix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c43e28115819785510f0d9b46182491351a17b4d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c43e28115819785510f0d9b46182491351a17b4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.W` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recF](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/recf.md) | 57 | `declaration-track:729c3244f3aa0bf3591ff37fd6f6bf255d77072e88c571597dce4e434391446d` |
| 2 | `theorem` | [recF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/recf-eq-source-edition-2.md) | 60 | `result-track:c17f2c7d175c2ae9c091d7d708d394b088107068ef1f5c70e30b1909e3304c17` |
| 3 | `theorem` | [recF_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/recf-eq.md) | 65 | `result-track:99ae42e3e6267ddc233f109d180fa6aaadb0b1964c958d57581c3a60958672a4` |
| 4 | `inductive` | [WEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wequiv.md) | 73 | `declaration-track:59edfdfe4f3a28bc242f8eb537a406a531309e5dd9a2bba678801cb51ac22028` |
| 5 | `theorem` | [recF_eq_of_wEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/recf-eq-of-wequiv.md) | 82 | `result-track:3258394a4aa4fdf5a7c79eb3b90f3beecd74db48c4556ddd8d690e0cfef5afae` |
| 6 | `theorem` | [wEquiv.abs'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wequiv-abs.md) | 96 | `result-track:7277645139b4c52b433cf4ab373d61ef7e4a47e4aa6f1fc2aa7de0a3261f7281` |
| 7 | `theorem` | [wEquiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wequiv-refl.md) | 106 | `result-track:7c63dbd4d708f49cd2e0184935486baf569c0eaf16d1b3902f289ad1f47da40d` |
| 8 | `theorem` | [wEquiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wequiv-symm.md) | 109 | `result-track:5282b95f1ede8299f7a17fb3f6e20472f0902973c7dc7d875149506b905fa8fc` |
| 9 | `def` | [wrepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wrepr.md) | 116 | `declaration-track:d84915dd2b3382a352cedfbdaba377f9ce7830575c393c3a156bb20b8b930c88` |
| 10 | `theorem` | [wrepr_wMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wrepr-wmk.md) | 119 | `result-track:db900323ca433bc1c8f89d28c9391a6f2d2bad485d7481bb05ede26d89bdaf20` |
| 11 | `theorem` | [wrepr_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wrepr-equiv.md) | 125 | `result-track:05825cb9d3d5501ed2cfc006c6377470cf4911c793ab43dce3f9158847d5e404` |
| 12 | `theorem` | [wEquiv_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wequiv-map.md) | 133 | `result-track:7e9e6401b03417d1e8ca8886cb303fdafa1cc5461ec79249377b4d7e2997410a` |
| 13 | `def` | [wSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/wsetoid.md) | 150 | `declaration-track:0fb38e21cf0d9556ad45a72eed9796bb7b1fe79a6e39c8d0b1d8f4e2f9624c18` |
| 14 | `def` | [Fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix.md) | 162 | `declaration-track:0a8107a1e11fe2bfe190783eca1df6893508f6c260963dd215367214b8aae5ec` |
| 15 | `def` | [Fix.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-map.md) | 166 | `declaration-track:b509acdef6f6243fd2bb9635c79d68b136c25e07b0856f4f7fbc7ad9cd844e65` |
| 16 | `instance` | [Fix.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-mvfunctor.md) | 169 | `declaration-track:a6a4f42fb199676a437b7708dc41da9d4175d76fd14d8765f150878896e80d3d` |
| 17 | `def` | [Fix.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-rec.md) | 174 | `declaration-track:47a1dfec12b0994d96ca2a1fde2d0d818ae423c63fced86d105d7046b3321dd3` |
| 18 | `def` | [fixToW](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fixtow.md) | 178 | `declaration-track:31ea3be4888fb25f735495608081c5f0ca7ad730f1ab3dc688b7afd34d1bac66` |
| 19 | `def` | [Fix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-mk.md) | 182 | `declaration-track:0fbd6ceb05bc087638d1fb45bd132cfa8d4a1f4e407b517b98e4fcd3fc3cd37f` |
| 20 | `def` | [Fix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-dest.md) | 186 | `declaration-track:7735e1933adbbc3e8ffe06123f16834d9f81490f9f02e3e8fcd501adfa7bcd17` |
| 21 | `theorem` | [Fix.rec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-rec-eq.md) | 189 | `result-track:587bfd1bcc368bbf30a7dd6c3066c93680f27223e9b5161ac00eb88392ade154` |
| 22 | `theorem` | [Fix.ind_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-ind-aux.md) | 205 | `result-track:e64f2f2ffec9dc08cb6d19f861723a07c11f5afa310ab0766ea87b90f528780a` |
| 23 | `theorem` | [Fix.ind_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-ind-rec.md) | 220 | `result-track:af91fc705e484abf2e066598661656419e5da42ad46eb1db83357351ac92dde5` |
| 24 | `theorem` | [Fix.rec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-rec-unique.md) | 240 | `result-track:94ac12e0ea030087aeed8bb347d0afb0f20fcccb9e8403a2633299f2dbeea51b` |
| 25 | `theorem` | [Fix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-mk-dest.md) | 247 | `result-track:07e40307039d94f8925f82b6d979f4360ab1f12d2bbaa2824c63d7641e366302` |
| 26 | `theorem` | [Fix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-dest-mk.md) | 256 | `result-track:6dc1bf9145c7475f343dd3f742c0123ccb7fec7340046f65b613b7c5271a051a` |
| 27 | `theorem` | [Fix.ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-ind.md) | 268 | `result-track:73ca5291019b556be0d481a17a87fb5eb1a428e5e15248758f88d5d474fd2357` |
| 28 | `instance` | [mvqpfFix](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/mvqpffix.md) | 283 | `declaration-track:f6e4e15fb5eba06ee2b57800a050bef820a7404501c0c51bdcbdabb20c3ea2f5` |
| 29 | `def` | [Fix.drec](../../../../../../ComputerScience/TheoryOfData/DataStructures/Fix.lean/declarations/fix-drec.md) | 301 | `declaration-track:a56d1f555f6e68e0963d0fbb542c84a320e24cfa4ff16578de62e3d78099277a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d88f13c76d8e223ee9be05f1a7a501881d02c817e893bb6831ea8a7f77ba78e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
