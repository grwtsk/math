# Verification target: Norm Num Pow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `384aae3c53c58ed96570c88c7151ce959041af15`.

Source path: `GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean.json)

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
| 1 | `theorem` | [natPow_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/natpow-zero.md) | 29 | `result-track:b85d7d7116a960cb7d2bee2fa0d1ac388c540a7b4401ba558a764fdf72b666a5` |
| 2 | `theorem` | [natPow_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/natpow-one.md) | 30 | `result-track:5275b59759be3dadf7527a81872339b071f5a2635a109256a067ece5bc2aced4` |
| 3 | `theorem` | [zero_natPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/zero-natpow.md) | 31 | `result-track:acd851b667210453434084deaff1abea9560981dc7308260954a66db2a6973ae` |
| 4 | `theorem` | [one_natPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/one-natpow.md) | 32 | `result-track:7d41bd514acf678400eb9b85330dd31c24bb9155898c6cd220f1283d78b87e63` |
| 5 | `structure` | [IsNatPowT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnatpowt.md) | 38 | `declaration-track:898469f6f5a248241e7076e2f1a76c77cfd35c98140ff4078d6fec419a85e27f` |
| 6 | `theorem` | [IsNatPowT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnatpowt-run.md) | 42 | `result-track:d0dae2eba5f4445e98622e03af17bfd1ad013a78071a430e936337005d11f295` |
| 7 | `theorem` | [IsNatPowT.trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnatpowt-trans.md) | 47 | `result-track:589726ab4517f9a944b4255b2f19551cead918471c4d775494be32fa0cdabadd` |
| 8 | `theorem` | [IsNatPowT.bit0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnatpowt-bit0.md) | 51 | `result-track:06f851afbe3887bd2fb435927ad74b0cc88bba29437512ed7193d9bfe0aa4065` |
| 9 | `theorem` | [IsNatPowT.bit1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnatpowt-bit1.md) | 54 | `result-track:854869e34b923fd5cc70a3f791650adb81595ba48f5ef8dd04a92db5fd36b721` |
| 10 | `def` | [evalNatPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/evalnatpow.md) | 68 | `declaration-track:bda13f6d1f5fa6fd671e9269575bf2498cb7349b24a6b7bef90250dcf3ced6f8` |
| 11 | `theorem` | [intPow_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/intpow-ofnat.md) | 112 | `result-track:88a9a524efbcf7eb4eb6bb3a5f54aef065d36db74f64013ec71ed0452aa0baea` |
| 12 | `theorem` | [intPow_negOfNat_bit0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/intpow-negofnat-bit0.md) | 115 | `result-track:6c0d0020d4cb6963ca9e537f8dd788ca5e999017c7a6c485b04d3ef5a6b3a306` |
| 13 | `theorem` | [intPow_negOfNat_bit1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/intpow-negofnat-bit1.md) | 122 | `result-track:c5a0869803d3d943869d2a2cde0f2b095c5e601ea04af7523715fd019d19f06d` |
| 14 | `def` | [evalIntPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/evalintpow.md) | 130 | `declaration-track:2b8dce844df19038d297f32b8bdc23eb438a0eecd382c1bb522a47d39f2c13dc` |
| 15 | `theorem` | [isNat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnat-pow.md) | 155 | `result-track:90d77bcbe626c6819586b9e9290ac37f4c59eeeae51d65738611cb8a13a6084f` |
| 16 | `theorem` | [isInt_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isint-pow.md) | 160 | `result-track:982b7ef01f91925660aead222b84decaa9cde2b6bbcf2d27b2a626a70a2d7f86` |
| 17 | `theorem` | [isRat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/israt-pow.md) | 165 | `result-track:303674dfe55984a45fbfac3a8a1088f6c94a7a850efd33c6eb7d8a680a24a562` |
| 18 | `theorem` | [isNNRat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnnrat-pow.md) | 174 | `result-track:2cdb120e55737e843fa044fab1e73650290a7d6734b4691df2bf804f7d6ba49f` |
| 19 | `def` | [evalPow.core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/evalpow-core.md) | 184 | `declaration-track:e29f0f5406bdb897c99c518fd7c84fa91293b0409c2ae32150cc227652bd637b` |
| 20 | `def` | [evalPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/evalpow.md) | 216 | `declaration-track:8d2748f9ca338b3a807b95a23e2a8aba39d327c82c77c9fdd2e9eb400152d42a` |
| 21 | `theorem` | [isNat_zpow_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnat-zpow-pos.md) | 228 | `result-track:322ecb5cd1322f2d663a676f33190a6ecf7411bd189f36519ce4850cdd9a42d9` |
| 22 | `theorem` | [isNat_zpow_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnat-zpow-neg.md) | 233 | `result-track:5c2af86153f98129f32affeab3124825e4005b0dffc2dae29bae0abd75f46438` |
| 23 | `theorem` | [isInt_zpow_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isint-zpow-pos.md) | 238 | `result-track:68a6606a80bcc4194b50518683d588ed09a51ecb5853fe5bcbf11cfc351046ee` |
| 24 | `theorem` | [isInt_zpow_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isint-zpow-neg.md) | 243 | `result-track:1d55621bc0ec469865d1f8c74353b7f4867671a4d9649808958982e200226332` |
| 25 | `theorem` | [isNNRat_zpow_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnnrat-zpow-pos.md) | 248 | `result-track:55dddb38236aac1ffeb3fe1705c41b39ae69257b5eeb5f7a801c9ce33224a3c1` |
| 26 | `theorem` | [isNNRat_zpow_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/isnnrat-zpow-neg.md) | 254 | `result-track:27976e1dfe07e062f15d9c9b3295366703e59825a7f304037f3991e0580766e5` |
| 27 | `theorem` | [isRat_zpow_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/israt-zpow-pos.md) | 260 | `result-track:85a369bea1c69a9d57b7576eec64fc6e14d9480bf042452dc65c9d4d668ca945` |
| 28 | `theorem` | [isRat_zpow_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/israt-zpow-neg.md) | 266 | `result-track:0d6f0c85e9d196d0cb85ea32f8bca793ceedd89fb11fbb57e5afbe4822017adf` |
| 29 | `def` | [evalZPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumPowPublic.lean/declarations/evalzpow.md) | 283 | `declaration-track:06c99261b018b06f9cca98c2159db2590f39bf0b533031dfeedc0af40093a2c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89cd11b7f50d90b5230718c898210a7837abfd5929cc0b456d8ee69ddd2b6b46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean","GRWTSK/_verification/specifications/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
