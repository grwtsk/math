# Verification target: Derive Encodable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ba2ac847aa8d122dfda59cb45ae29113032eae",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0a92ee0d9e951868ccff260fdf5c78646903e7e9b2f7a478677930b31fc0580f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ba2ac847aa8d122dfda59cb45ae29113032eae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0a92ee0d9e951868ccff260fdf5c78646903e7e9b2f7a478677930b31fc0580f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0a92ee0d9e951868ccff260fdf5c78646903e7e9b2f7a478677930b31fc0580f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.BuiltinRules` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [S](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/s.md) | 85 | `declaration-track:aad7951ea7328694907f77bf2d9e621bb2ceb0291b86808c00ddcffb7c243a62` |
| 2 | `def` | [S.encode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/s-encode.md) | 89 | `declaration-track:f7d0fcf7dc38bace7bbbc5500984ddc874cd87598026caebce2d492b2c996147` |
| 3 | `lemma` | [nat_unpair_lt_2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/nat-unpair-lt-2.md) | 93 | `result-track:1c15782b446418eeb7944af1630a04c837fb5ce3f98714bf08cfffda9f7fe440` |
| 4 | `def` | [S.decode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/s-decode.md) | 101 | `declaration-track:ba30223efd0218626ffbf89cdbb7ec93e363fbf6e02cebe275358ad0982b89ff` |
| 5 | `def` | [S_equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/s-equiv.md) | 111 | `declaration-track:0e4a6bc0d779fcad3a528e0ca39c34d5d3742f4316f88409e283396db11d04ef` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/instance.md) | 140 | `declaration-track:0e57b0b7ff4cb8927cf175a3877db06ee7732a097c2826bff6c267cf92bacbb7` |
| 7 | `def` | [mkToSMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mktosmatch.md) | 152 | `declaration-track:ef29b8e7a719ff34bbbd9e4d51dda2ce87aa368b7569036cd342fd06117f0347` |
| 8 | `def` | [mkToSFuns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mktosfuns.md) | 188 | `declaration-track:9f8ff4c86ef65cf91c5775758b87ab625b86a4bee2d9ca74ab180aef77e11306` |
| 9 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/anonymous.md) | 197 | `declaration-track:2e84143e56bab53d0a264368ce8cc1c86230971aa2f9645185d808df631cefd0` |
| 10 | `def` | [mkFromSMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkfromsmatch.md) | 206 | `declaration-track:c678114a07b4dcd1888068959f65930b66b86a4f9cf170fa2f4ee37ae8f6d34c` |
| 11 | `def` | [mkFromSFuns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkfromsfuns.md) | 256 | `declaration-track:dadd7cb66ef19c643843a929d0ed58b617d166ef4eca6cee1ff53e89273a404e` |
| 12 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 267 | `declaration-track:4ecfe2311d2106d7cf3d24b0930db07cf7a6e4ced9f0f6b740198db789b97e7d` |
| 13 | `def` | [mkInjThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkinjthms.md) | 280 | `declaration-track:f6f1096002cab99b57231b5fd75188d5ee5ac5e3aa30a32b157a7c47d3aedc97` |
| 14 | `theorem` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/anonymous-source-edition-3.md) | 300 | `result-track:db2619e18e0729d4a8d84a56982a11c40ed767c62e16345d37947119aa775fd0` |
| 15 | `def` | [mkEncodableInstanceCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkencodableinstancecmds.md) | 312 | `declaration-track:9829ae2341a2e37cee6f154972bff7d9e3eb930e128acb57288224035f4d2250` |
| 16 | `instance` | [$binders](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/binders.md) | 328 | `declaration-track:7df8b5a24cd8e8a3502f7d99ca0b453274d7b6dfb96c2d30441d307773f60454` |
| 17 | `def` | [mkEncodableCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkencodablecmds.md) | 334 | `declaration-track:84a4292a4002b663b0eb6babeaa8a76e77c0ccfe610b4e9ed78705d6c07bb983` |
| 18 | `def` | [mkEncodableInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/mkencodableinstance.md) | 359 | `declaration-track:2c0287d5a0a693e0dba714a9f78458f322978ae93965bf94bedb377fb6bf3144` |
| 19 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveEncodableNamespacedPublic.lean/declarations/initialize.md) | 375 | `declaration-track:c728dc2808c3b055bf75b65f2ef43b79dea7b751e07d19c38a10336d106ade15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3cb1d698f7349d8b72389ac4bfcba50233edd272b4cc8725f954f1c7c84a8f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0a92ee0d9e951868ccff260fdf5c78646903e7e9b2f7a478677930b31fc0580f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0a92ee0d9e951868ccff260fdf5c78646903e7e9b2f7a478677930b31fc0580f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
