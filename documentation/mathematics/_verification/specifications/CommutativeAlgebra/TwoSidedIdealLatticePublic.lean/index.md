# Verification target: Two Sided Ideal Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11406844dcf195e36d76512bda65aeb07f56503d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantda7793c01598029bbcfca5f362fc3ac3fae351e092aa291556df68371af068e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11406844dcf195e36d76512bda65aeb07f56503d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantda7793c01598029bbcfca5f362fc3ac3fae351e092aa291556df68371af068e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantda7793c01598029bbcfca5f362fc3ac3fae351e092aa291556df68371af068e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-4.md) | 20 | `declaration-track:71255273b625b0f8949783a31b013ab51949097c36784915fee1c97d4dd9c938` |
| 2 | `lemma` | [sup_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/sup-ringcon.md) | 26 | `result-track:9a7d820a9b716b71e636ae036fd874cb13167b4baf3524083e6496f4413bdf33` |
| 3 | `lemma` | [mem_sup_left](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-sup-left.md) | 32 | `result-track:9e6eb206c80ce8d9781d4896156a2360e3c67b91a0b952838965d5d2938a5f6f` |
| 4 | `lemma` | [mem_sup_right](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-sup-right.md) | 36 | `result-track:a249a022b0929367d34620220821582837101f827b971aa83e437e8db294aeaf` |
| 5 | `lemma` | [mem_sup](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-sup.md) | 40 | `result-track:83376f51c7cc5b25236bb39921fb53e36333b024f63724e7ea3b8439a696c170` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-9.md) | 62 | `declaration-track:cf1644699e6f0331cf4023c5f90cd7644a48d9bb12865fd545dd1fe0c9e20eee` |
| 7 | `lemma` | [inf_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/inf-ringcon.md) | 68 | `result-track:997230aaaf20989292afb1488af8c044405ce05a590e07a105585ef873db4bcd` |
| 8 | `lemma` | [mem_inf](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-inf.md) | 70 | `result-track:8d3039ea30836107cac439214773c00cfc58a52c4526d8adad28fbb8b9bcc54d` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance.md) | 74 | `declaration-track:1331548e2079e373ab2fbcc4383a5cc67eaa4de91359f2235243d0d2b59c43da` |
| 10 | `lemma` | [sSup_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/ssup-ringcon.md) | 77 | `result-track:fc8205b3fbfd1e19b79475c118de7da38b75c109899b07aa1d090d4bdda5e843` |
| 11 | `lemma` | [iSup_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/isup-ringcon.md) | 80 | `result-track:2955f08b17603363f83e9b02553af56b83c19746444fd7bda8215a84687ce1c8` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:3592b24d9f1cca7f97064136cd894e68651e325d5fe09e2545bc6cf134ec8771` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:1d684f4fb17a454f15a291b097cd6930c8d83f2a68f4c7235be98f5bb81b0d1e` |
| 14 | `lemma` | [sInf_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/sinf-ringcon.md) | 90 | `result-track:56c94a1379e4a0b49706a15dcbfc694f3ede9a5c2fad2c64dee9a13fb0fd9bcf` |
| 15 | `lemma` | [iInf_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/iinf-ringcon.md) | 93 | `result-track:6feb1df2cef790fd0ce7bc1fb09f7b5540141780a7026e1fa2b0cff2db6da16f` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-7.md) | 97 | `declaration-track:bc869bc06b29590890a561bc128a998d09f92d969d32ebf1d3edbe93c77aeab0` |
| 17 | `lemma` | [mem_iInf](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-iinf.md) | 100 | `result-track:665a4c50488646a357f3f1b0268cce517fd03f54a53c70ff723d07d7c6b00b0d` |
| 18 | `lemma` | [mem_sInf](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-sinf.md) | 104 | `result-track:70a189ee8c88be771a2eaa55409b14f4b271e15a850b617cf786edd33808897d` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-6.md) | 108 | `declaration-track:b98e8507ef41f4072aae46f6439ed36438ca08a5947186fa090ceb041e165bc3` |
| 20 | `lemma` | [top_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/top-ringcon.md) | 111 | `result-track:624aa134ed204243a3e40fa3ff8c6c2b4ef93dd3d33c4bb2303cb33b5498e8ea` |
| 21 | `lemma` | [mem_top](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-top.md) | 114 | `result-track:005570137c9f65f99049f3a971f1f2b31a871cb8418ccfb4c92d709296086017` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:c392172be74a499ab34c006ebf331fc5b50239b7969386f72a9e874c734d3b45` |
| 23 | `lemma` | [bot_ringCon](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/bot-ringcon.md) | 119 | `result-track:6270300211bafae14d444787fd9e8810d26f69963c94cc3893180d8cbff42a5e` |
| 24 | `lemma` | [mem_bot](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/mem-bot.md) | 122 | `result-track:f2cf8b7a8768f7580f858de71501fa5163aea6345f0d460716c8b4484557c008` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/instance-source-edition-5.md) | 125 | `declaration-track:9a30dc3619585c185c7307ccedafbe102d1ed74792fc17085ec8ca18629ac78b` |
| 26 | `lemma` | [coe_bot](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/coe-bot.md) | 134 | `result-track:c45a0d07ac96c858c19245e8bd8b1136767caf66ef51d70173c3afff2b932550` |
| 27 | `lemma` | [coe_top](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/coe-top.md) | 137 | `result-track:d6922b9aaeccf698e85919f3e53ea201263ccf6a7065148a3bff2aef9c96296c` |
| 28 | `lemma` | [one_mem_iff](../../../../CommutativeAlgebra/TwoSidedIdealLatticePublic.lean/declarations/one-mem-iff.md) | 139 | `result-track:f6335946cf90a623414c9d3c466bce5c7b768cf1eff40181a403e210fb1a199e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baf613835a82ad277c24a0af097892994b884c11c58048737f777bbeade4037a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantda7793c01598029bbcfca5f362fc3ac3fae351e092aa291556df68371af068e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantda7793c01598029bbcfca5f362fc3ac3fae351e092aa291556df68371af068e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
