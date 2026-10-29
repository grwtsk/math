# Verification target: Prod Lex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51646e292bf424497c3365eb9c8f5f25fc573081",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51646e292bf424497c3365eb9c8f5f25fc573081`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instle.md) | 54 | `declaration-track:8e7be60bbad7c44726529a6de83edde78840e2ba16f4366ebc90bb519d1c016a` |
| 2 | `instance` | [instLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instlt.md) | 56 | `declaration-track:32d5cf06a2372dd6f529a2c265013acad20a493320ddb4c782974e25c25e71e5` |
| 3 | `theorem` | [toLex_le_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-le-tolex.md) | 58 | `result-track:0cc24e47af0c56f38b26030fa86956f0aa8546bf0b5adfd7797bcbd61042cfbb` |
| 4 | `theorem` | [toLex_ge_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-ge-tolex.md) | 63 | `result-track:4d698ceff81c68f4ed0fc5d6f9f074ca21754dc54ac923a1f02bf618bf5bbff7` |
| 5 | `theorem` | [toLex_lt_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-lt-tolex-source-edition-2.md) | 67 | `result-track:dbe919c09c214df243dcfab8901ed5c755769b18149f933d353dfb981bd26122` |
| 6 | `theorem` | [toLex_gt_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-gt-tolex.md) | 72 | `result-track:8e9266b3da4241e06d796054b5ba6ca7885351e9268efd8d813543be0db9cd69` |
| 7 | `lemma` | [le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/le-iff.md) | 77 | `result-track:84ab72bf116d8119ef9fb383913fe140850bca4dae6ac6f9291c58700c4f0099` |
| 8 | `lemma` | [lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/lt-iff-source-edition-2.md) | 82 | `result-track:d329da74661c6377535a29b4d5b7193c88577530b91a1bba2f57e8e115522523` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:18896a2247bbff686eae3e1e1f30533316a414bb292c2cd46241a7c56d36c8c5` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-5.md) | 89 | `declaration-track:9158fe8cb6f4e33b2c273e9bc597f1ad23b9155503db223adbf0a232f6fa9378` |
| 11 | `instance` | [instPreorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instpreorder.md) | 93 | `declaration-track:f2149ac64a2de7fc1c0bc94a0f86d2ae3d73313f838c2f2cc9667fa4ea9a007b` |
| 12 | `theorem` | [monotone_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/monotone-fst.md) | 99 | `result-track:77df0e501f4da4bc9ea38d7e810b277611db336a1ab359ea111016885ae66777` |
| 13 | `theorem` | [monotone_fst_ofLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/monotone-fst-oflex.md) | 109 | `result-track:3e0270fbdc280d5a70c350a13626f9c9e0c9fcf4328953b184024e40e3c8b1ad` |
| 14 | `theorem` | [_root_.WCovBy.fst_ofLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/root-wcovby-fst-oflex.md) | 112 | `result-track:f1f122089c22652747946dfb8ee7276d53ad6d47b320ec89e493ee7c39f0d72c` |
| 15 | `theorem` | [toLex_covBy_toLex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-covby-tolex-iff.md) | 116 | `result-track:3343447c7aabdddf8e095f6817e3c837efadb5b76d866176b709fbe717251b0f` |
| 16 | `theorem` | [covBy_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/covby-iff.md) | 123 | `result-track:1f050f603b0d3c7d60cb5323ec0692d95706e6f5ea0cc0e2ba006bb11245ad54` |
| 17 | `lemma` | [toLex_le_toLex'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-le-tolex-source-edition-2.md) | 136 | `result-track:803de48ea4826d73ff24d7fb5a8943366e0de39fdc36d4402b433199c3ceda64` |
| 18 | `lemma` | [toLex_lt_toLex'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-lt-tolex.md) | 142 | `result-track:a482e771cc2debb00cb04294dbf7208ef20d6824d2fc6a1a603af75f74770d52` |
| 19 | `lemma` | [le_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/le-iff-source-edition-2.md) | 149 | `result-track:a796afa913e23cf54286c4b9830f3efe87e5fe1bf7b64f6a895eeabfda951c73` |
| 20 | `lemma` | [lt_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/lt-iff.md) | 155 | `result-track:794dc760d27aabee0dc3a8a8ee5c6d6c317d9307131e6ce3b97b4851f14a74ec` |
| 21 | `theorem` | [toLex_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-mono.md) | 159 | `result-track:46fdf622f12c7b417d5934809d3876b2a9255bfa93a2138f756a05c7dec7f57b` |
| 22 | `theorem` | [toLex_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/tolex-strictmono.md) | 162 | `result-track:611c6bec2593c8c2161ed78c95247a5613fbe634178d994d864b77cd8afbec8c` |
| 23 | `instance` | [instPartialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instpartialorder.md) | 171 | `declaration-track:e03b0bcacd9cdeb49c884f592b01465aa97a09311a836cadaae98fdbde958d2e` |
| 24 | `instance` | [instOrdLexProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instordlexprod.md) | 175 | `declaration-track:49470209ce477301c34f3883e65db9a75dcf52f8c96270db6ee87875695b6cce` |
| 25 | `theorem` | [compare_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/compare-def.md) | 177 | `result-track:0d2321b80774b6bb3b147b99ff57fddb33aef63bbf4b2239bc9e8046b196e170` |
| 26 | `theorem` | [_root_.lexOrd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/root-lexord-eq.md) | 180 | `result-track:d7abfd8d6e938ca6a6c685a2a0334a5c0284b3eb4fd12d538ee03276cf76bbfd` |
| 27 | `theorem` | [_root_.Ord.lex_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/root-ord-lex-eq.md) | 182 | `result-track:dd92fa1c4944a97cd1c50b2c91a80842805edb65021248e9ae1afc4691e4bb4e` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-7.md) | 184 | `declaration-track:a70ac3daa8cfba9a7978387e7868946c43e02660135f7a68c3e53ad647d0c9a8` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:a3ddcd496640d9e0f90a08c291f48a929f91ff431f2b7adb64138ec9b028d522` |
| 30 | `instance` | [instLinearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instlinearorder.md) | 191 | `declaration-track:a1a4b4c54fe7a910e80b775e4600486b8e4e5079b358bf3233a1c3e605aa8c7e` |
| 31 | `instance` | [orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/orderbot.md) | 206 | `declaration-track:ff036fe40cd060014e5c7d541beffa1af5451405d3565ac0e22af7b95bd82b37` |
| 32 | `instance` | [boundedOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/boundedorder.md) | 210 | `declaration-track:d3a03d3d7afe85da62371a148ace5401abb76196888842d0b18b6ea129082d09` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance.md) | 213 | `declaration-track:0c0d4d5d24bb52956015600d73d50d86825808dd2e71446699b935f2af72bf46` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-3.md) | 222 | `declaration-track:3ca43a0e941c306ac70803d944d79d1be84f5aa7f244fa892286956fb4a977ff` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/instance-source-edition-4.md) | 237 | `declaration-track:4c5a6a043446a3d1992a29414d9da28425af926fdcaa1d0367f408f483e1d7ad` |
| 36 | `instance` | [noMaxOrder_of_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/nomaxorder-of-left.md) | 252 | `declaration-track:4d5f2ac6459ef880bfd257b04d83f61f0526a14fe18eecea579e81729010388d` |
| 37 | `instance` | [noMaxOrder_of_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdLexPublic.lean/declarations/nomaxorder-of-right.md) | 261 | `declaration-track:b03216aff84d72a7720f5a4660df91c35fa0d48929a3595baeaa56b045addd5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db26c89a1edaf8d99106084b1ab3e02769376382e8ac5ba31bacfce62a13c9db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
