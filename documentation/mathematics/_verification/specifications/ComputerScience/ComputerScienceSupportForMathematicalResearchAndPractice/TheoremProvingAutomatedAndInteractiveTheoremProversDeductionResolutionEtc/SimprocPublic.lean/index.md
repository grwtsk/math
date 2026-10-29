# Verification target: Simproc Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c6b53635b26cecb72d0b153878f916511a5ad6d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c6b53635b26cecb72d0b153878f916511a5ad6d`.

Source path: `GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring.Field` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.DecLevel` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.FieldNormNum` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkSemiringThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/mksemiringthm.md) | 21 | `declaration-track:43bb2b0cca99a6e3c376f794a8cd44fc990a96bd7e95a95a98f756991112fd4d` |
| 2 | `def` | [notField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/notfield.md) | 61 | `declaration-track:d4a5a8f1040feafada05cb2193764eec6b581e4764108f8f71ef65322827a650` |
| 3 | `def` | [isNotFieldQuick](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/isnotfieldquick.md) | 64 | `declaration-track:e24aff47b06fa90c0f3a99404019262ef1fdb52caeb9259acc088f7b4c2f3023` |
| 4 | `def` | [normInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/norminst.md) | 105 | `declaration-track:9808184945ab007ff0e9f032d45ff58ca4a4dffa7568d9a947caeb61fb3c2a3e` |
| 5 | `def` | [isNormNatNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/isnormnatnum.md) | 124 | `declaration-track:3526f857679d0e73c149edcee18ea3cf34fcbb24ff2c0f522caa493519e4c4e2` |
| 6 | `def` | [isNormIntNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/isnormintnum.md) | 149 | `declaration-track:0610325ec54601241680f290b97b86c40a6154eedeb7c4b443500e29308f3d5d` |
| 7 | `def` | [addSimproc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimprocPublic.lean/declarations/addsimproc.md) | 206 | `declaration-track:03b8eb96793737c14223c9805f1bf6650ba88aff8db353dedb2bb9199a170b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0e08caa13f084326c12d8f7be17cf5c2a0d1c5945ac054c9808a40f6af19112 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean","GRWTSK/_verification/specifications/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
