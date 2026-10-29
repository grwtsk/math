# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cca97b1f15436ade2ceba24f6e0aa334bc5819cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/index.md) · [Full source](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cca97b1f15436ade2ceba24f6e0aa334bc5819cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DensityDecoder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeAtoms](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primeatoms--5897119d5082c7c60b7d1900.md) | 18 | `declaration-track:5897119d5082c7c60b7d1900d834d2d647c920b3841900b70c8d4f595ec4cbbd` |
| 2 | `def` | [primeCorrected](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected--325190c5d40c9cd8d4d8ac7a.md) | 22 | `declaration-track:325190c5d40c9cd8d4d8ac7afd3fc09f4e367317a0be6ed905c2e93270a70f8b` |
| 3 | `theorem` | [primeCorrected_at_atom](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-at-atom--723c7fc53cbbaac8f21d9118.md) | 25 | `result-track:723c7fc53cbbaac8f21d91189242b95635ac66c6d9027a1fdcfd5a4d6d122829` |
| 4 | `theorem` | [primeCorrected_ae](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-ae--49a654636bfc5a655edb2a2b.md) | 32 | `result-track:49a654636bfc5a655edb2a2b831e0bfb1a16edf58a9af4e1157a26964d9fd687` |
| 5 | `theorem` | [primeCorrected_integrable](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-integrable--e29c87cb7282629d039c8523.md) | 38 | `result-track:e29c87cb7282629d039c8523ad333768a8afc0fb8ad6d877c8d5de649f6cabe8` |
| 6 | `theorem` | [primeCorrected_primeLogSum](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-primelogsum--ce05468c10acf94298e1657a.md) | 42 | `result-track:ce05468c10acf94298e1657a7df362632866eff1c067c84f6c917a47bd4c9203` |
| 7 | `theorem` | [primeCorrected_density_integral](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-density-integral--bd106b6267c714ff9be3970d.md) | 50 | `result-track:bd106b6267c714ff9be3970deac11efa3878678ab633a2b3167ab00e7331113f` |
| 8 | `theorem` | [primeCorrected_readout_error](../../../../../../../Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean/declarations/primecorrected-readout-error--2176520535acd4e61a3017f2.md) | 59 | `result-track:2176520535acd4e61a3017f2240ab8463d2272a148f9b5835eff85565fd76a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d03042a72c4dac87e090ed39b488bb0c6d3b87d5f0aaab4a85805307092af91b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt01/Variantab8fa5cee8bf7e146a93086c5a837d33897ae51c5dc088191bda851c63144d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
