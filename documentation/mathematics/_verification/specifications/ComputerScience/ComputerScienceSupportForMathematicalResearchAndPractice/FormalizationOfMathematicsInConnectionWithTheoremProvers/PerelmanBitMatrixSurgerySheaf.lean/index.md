# Verification target: Perelman Bit Matrix Surgery Sheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc4a9a1ad9d490a58fb0fdad69cc5442db044a99",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc4a9a1ad9d490a58fb0fdad69cc5442db044a99`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Lookup` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Residue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryCellKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerycellkind.md) | 18 | `declaration-track:aa6fb722a0c1c24aa7fb254191bdeb011c11a4868196b19989c8d1410601fd98` |
| 2 | `inductive` | [SurgerySheafClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerysheafclass.md) | 26 | `declaration-track:2cb504c82107ea74940030fe57b4afaf9048e858f8f82b8f2e9a75cdba229136` |
| 3 | `structure` | [BitMatrixSurgeryCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/bitmatrixsurgerycell.md) | 34 | `declaration-track:8886da547f559016c2782b6a5810a8418ba304bce0bbcdb566117a337d6d9f4c` |
| 4 | `def` | [classifySurgeryCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/classifysurgerycell.md) | 43 | `declaration-track:2a4a4bfa790cd4d012d8a6f8f4c715a500c2b3b6ac5f9756036cd453e8cec85d` |
| 5 | `def` | [surgeryCellKindOfBucket](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerycellkindofbucket.md) | 50 | `declaration-track:3e8cfd97091927d645fd9c073884526cb3bf5fd12dd2186e2ca8cc221d860f92` |
| 6 | `def` | [surgeryCellKindForBucket](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerycellkindforbucket.md) | 57 | `declaration-track:2bf06b8f31380b5511d02754310812a2d9cd44b9dd2b6c0cf1934d70f4ba9268` |
| 7 | `def` | [residueBitForSurgeryClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/residuebitforsurgeryclass.md) | 61 | `declaration-track:80083e296f5aed0bd50934226d447780d6c376feb02cbc14dc765ced920a0213` |
| 8 | `def` | [surgeryResidueBit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgeryresiduebit.md) | 69 | `declaration-track:a784f3c734dff4b23b276f5eb9257d46c0ebe9fe236ecdaa247fd1605d00b92c` |
| 9 | `def` | [residueBitForBucket](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/residuebitforbucket.md) | 72 | `declaration-track:f1258de79fe4d27c4c5483b4048139ab87cb57ed5960ef8fff2c30ec62ba9ed6` |
| 10 | `def` | [mkBitMatrixSurgeryCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/mkbitmatrixsurgerycell.md) | 75 | `declaration-track:83505e9c7e52baa34b4e40bdec1ddf47703e840618c7151367ca3ce06460ba62` |
| 11 | `def` | [surgeryCellForMatrix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerycellformatrix.md) | 85 | `declaration-track:da0761a9172dff29378ccf7affbfa62673e855b3b823c67fe59ff3234437decc` |
| 12 | `def` | [surgeryCellsFromAllMat2F2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgerycellsfromallmat2f2.md) | 88 | `declaration-track:31775186b1cd9cee7a0425157020ce106ee92b1fc115979a70be4b6fc48ddb52` |
| 13 | `theorem` | [mk_cell_phase_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/mk-cell-phase-eq.md) | 91 | `result-track:83676b628c797f48f9c96f5939784726405d41da7999abde2457ea5e20d77754` |
| 14 | `theorem` | [mk_cell_bucket_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/mk-cell-bucket-eq.md) | 95 | `result-track:2be62508baa56510de9ad64eeaa12efcfe893a2a23c0fd03216104d855579998` |
| 15 | `theorem` | [mk_cell_surgeryClass_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/mk-cell-surgeryclass-eq.md) | 100 | `result-track:e232ea913ed0c51aa573a75d430642c5c148c50e81d2ebd1f7b0da90c0254f45` |
| 16 | `theorem` | [mk_cell_residueBit_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/mk-cell-residuebit-eq.md) | 105 | `result-track:515df40ddad42489ee7afe62c5b77f677a48d5511153fdddc1841f305fe4c35f` |
| 17 | `def` | [perelmanAuthorityResidue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/perelmanauthorityresidue.md) | 111 | `declaration-track:e82be735fe43f4233d1a5d2a55549dad8977b371e3f8c94be9ce365295e80857` |
| 18 | `structure` | [PerelmanBitMatrixSurgerySheafSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/perelmanbitmatrixsurgerysheafsurface.md) | 117 | `declaration-track:8e2dba8193c23c6c7a6598e01341f96a220a42def018e2b298c12facc0e4ad12` |
| 19 | `def` | [defaultPerelmanBitMatrixSurgerySheafSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/defaultperelmanbitmatrixsurgerysheafsurface.md) | 128 | `declaration-track:30f7095994a0d03abf08ab774963dae2fa109e247ea225d792652627d37b28d9` |
| 20 | `structure` | [PreservesBitMatrixSurgerySheaf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/preservesbitmatrixsurgerysheaf.md) | 139 | `declaration-track:4827955e96018894e5fe2fb2bf277bc4b23b245b045deaf9d3775bf2d990c225` |
| 21 | `theorem` | [zero_bucket_classifies_as_collapse_residue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/zero-bucket-classifies-as-collapse-residue.md) | 154 | `result-track:d95d9c7d82bca031384c4adeb086aadf31585ca128696ad668bc5c2cfd63f830` |
| 22 | `theorem` | [identity_bucket_classifies_as_smooth_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/identity-bucket-classifies-as-smooth-witness.md) | 159 | `result-track:3c88541d057c3f7da7b8344551ccc5cfb1d6af49d5316c6e98a54758fc80ccc9` |
| 23 | `theorem` | [rank_one_singular_classifies_as_neck_candidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/rank-one-singular-classifies-as-neck-candidate.md) | 164 | `result-track:2cec54c5265de80b0f09fa3f8194883347a2d6255c228edc4cac9045f09ae345` |
| 24 | `theorem` | [nonidentity_invertible_classifies_as_local_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/nonidentity-invertible-classifies-as-local-witness.md) | 169 | `result-track:c74ba147c27c484fe16180478e8a4d85cdf189b731ada6ec91614bf2d3041887` |
| 25 | `theorem` | [perelman_authority_residue_is_open](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/perelman-authority-residue-is-open.md) | 174 | `result-track:76bdad5dc15c7deb7f99f2e9926eb82c7808c8bcb8442febcccafbd56af99c09` |
| 26 | `theorem` | [perelman_authority_residue_obligation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/perelman-authority-residue-obligation.md) | 178 | `result-track:8419c5418aceebf136cd28a40061a2206707db312377ce3cf47ddc3568138eb6` |
| 27 | `theorem` | [perelman_authority_residue_status](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/perelman-authority-residue-status.md) | 183 | `result-track:5749616559c31853606574907fc23deefcd7d95694b098c4a4e3fdd55bb7b6e2` |
| 28 | `theorem` | [default_surface_has_no_theorem_claim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-has-no-theorem-claim.md) | 188 | `result-track:45bff91e06ac7e6f1711a2a00b015c5787ecff9a0032aef37d7c651897427ede` |
| 29 | `theorem` | [default_surface_retains_perelman_residue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-retains-perelman-residue.md) | 192 | `result-track:b9a98990072a0ba4269b6cf1be334f2d505c4959b593fb07309ab34d462bb5c3` |
| 30 | `theorem` | [default_surface_denies_spin4_orbit_claim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-denies-spin4-orbit-claim.md) | 197 | `result-track:0721e105fc67c4bc3af4ea7dad949aa73b190db98f9996b93f6d671404925e87` |
| 31 | `theorem` | [default_surface_denies_conjugacy_orbit_claim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-denies-conjugacy-orbit-claim.md) | 201 | `result-track:5cb355448ee4f7bc286f2ba16b3bd1393daa0dc60c8fc22b9f56d39bc4e84aaa` |
| 32 | `theorem` | [default_surface_cell_count](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-cell-count.md) | 206 | `result-track:647d3d1b641371cffd780e8bbe77f2be1bf95ce6f547302d2645a842f714d258` |
| 33 | `theorem` | [default_surface_cell_count_sixteen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/default-surface-cell-count-sixteen.md) | 211 | `result-track:1dfa1f8189a14ad5fb6f45951369a45c56e80ef04cf29c0e56b4efebf531fc2f` |
| 34 | `theorem` | [finite_surgery_surface_is_not_perelman_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/finite-surgery-surface-is-not-perelman-theorem.md) | 215 | `result-track:f453e7568699d62da436bae7290ee75523932a13fc1724f52e044ceeae5dda0f` |
| 35 | `theorem` | [surgery_sections_glue_unique_finite_surface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/declarations/surgery-sections-glue-unique-finite-surface.md) | 223 | `result-track:e7ee1d441b7c3f2ccd7e292f3e6fa099b5fa894df613dcbc31bad31c4601d5f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=302e1f528cff784a61c0ddb4434386836bd89977aeb447da1f68ea888e4c9056 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
