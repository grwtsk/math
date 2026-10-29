# Verification target: Smoke

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5bba5383ee4dafd671a07450ad88620eb1cdb4c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5bba5383ee4dafd671a07450ad88620eb1cdb4c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Kernel.Residue` — import line 2; external provider; requires a separately pinned dependency.
- `Think.Kernel.Checked` — import line 3; external provider; requires a separately pinned dependency.
- `Think.Pipeline.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Manuscript.All` — import line 5; external provider; requires a separately pinned dependency.
- `Think.Targets.RH` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Targets.Modularity` — import line 7; external provider; requires a separately pinned dependency.
- `Think.Targets.PrimeGaps` — import line 8; external provider; requires a separately pinned dependency.
- `Think.Targets.NavierStokes` — import line 9; external provider; requires a separately pinned dependency.
- `Think.Targets.Kakeya` — import line 10; external provider; requires a separately pinned dependency.
- `Think.Targets.AnalyticContinuation` — import line 11; external provider; requires a separately pinned dependency.
- `Think.Targets.SieveTheory` — import line 12; external provider; requires a separately pinned dependency.
- `Think.Targets.AutomorphicForms` — import line 13; external provider; requires a separately pinned dependency.
- `Think.Targets.FiniteDataAsymptotics` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitbridge.md) | 22 | `declaration-track:5546e8f3eee226b79504efd1aec8640938db9f80523dd2bec0dc531f73e3c25f` |
| 2 | `theorem` | [unitBridge_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitbridge-bijective.md) | 28 | `result-track:fc777bcb6418c614ba742a76df608f9ef0b99db1fc1616979bff31b3ad8a7dbe` |
| 3 | `def` | [unitModularStage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitmodularstage.md) | 38 | `declaration-track:448b75643f450b401c8d0ded0541dd4c1ba1e211a5238182f179666b93977853` |
| 4 | `theorem` | [unitModularStage_isProved](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitmodularstage-isproved.md) | 56 | `result-track:d7abbc1d45e0dcc0162e7326197ca7b1634c04a7c8b0eb77613a2d2865b773a0` |
| 5 | `def` | [unitBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitbridge-source-edition-2.md) | 61 | `declaration-track:c54ff7606446972142cf6691cac3f8e7d090f7386cfc10a6b0cef52a35952fcd` |
| 6 | `def` | [unitQuotientStage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitquotientstage.md) | 67 | `declaration-track:ba1846cda9a5bf8a59f32d761545ac0c18bd79b5738d5f94d44fd60e1c30cf7b` |
| 7 | `theorem` | [unitQuotientStage_isProved](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitquotientstage-isproved.md) | 74 | `result-track:e1a361b171968d2ab289e68b6920f9c2f1bc2e0b4d970a4f58bcd3756f75e34d` |
| 8 | `theorem` | [unitCompactShell_hasResidue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitcompactshell-hasresidue.md) | 79 | `result-track:dc65fde7d2f78f46df0a2c43dd2f1d084d7c5e44b80a3564ccb3898b42dd9a72` |
| 9 | `def` | [unitFredholm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitfredholm.md) | 84 | `declaration-track:8ac42e58a6cdbcae7a1ce844171a9df6eb7f97a7837c0bd93a67cc47505f0a05` |
| 10 | `theorem` | [unitFredholm_isProved](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/unitfredholm-isproved.md) | 90 | `result-track:aa142f0e0244256dea841353ab9627c512988ad09e062404471a37bee087dcb4` |
| 11 | `def` | [smokeContext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/smokecontext.md) | 134 | `declaration-track:dee4376460d02eede1b3ee6bd9f513d7c469c0e7c431df0a263b463f2dbda8f0` |
| 12 | `theorem` | [centerWeightedPipeline_hasResidue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/centerweightedpipeline-hasresidue.md) | 138 | `result-track:0e63c16e9b149ca9fec6bcca30daaeec54879785184ad60132e880ecf0174773` |
| 13 | `theorem` | [centerWeightedPipeline_residueCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/centerweightedpipeline-residuecount.md) | 142 | `result-track:d2badd77666bd02cbe9cf4694fb229c092d05dfeb1bdfc8538a2164f407be182` |
| 14 | `def` | [dummyResidue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/dummyresidue.md) | 172 | `declaration-track:86086749846faebbbb67da7793bb55aad4cbda6b5d748984cd89378bc3629d75` |
| 15 | `def` | [dummyChecked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/dummychecked.md) | 179 | `declaration-track:8280fbc6701822f5dcc7c875b56b60a26a8d1c86d5a2bbad296db6933469ee93` |
| 16 | `theorem` | [dummyChecked_hasResidue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Smoke.lean/declarations/dummychecked-hasresidue.md) | 182 | `result-track:14075bcb20898d99d13c4cf45d54de842a8a79c52a845fb2a39e2131a65e68d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf4fb5701e0d85aa084e4f991ae0fbf769c347eb5c2e37cfbe8e28ee6cf61b78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Smoke/Variant13b19c6a90b51d439a33cf529a0d96102b1eb55fdddc1e06d6f4b99f6e4a094b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
