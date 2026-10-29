# Verification target: Attempt01 Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebcda7ff0832353d808a47ce8727f71d5e04c168",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebcda7ff0832353d808a47ce8727f71d5e04c168`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/poweronset.md) | 17 | `declaration-track:776dfd2164460b92e998c081303872a540e5babb221f79fb4e7ae44423efe52c` |
| 2 | `def` | [powerWeight](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/powerweight.md) | 20 | `declaration-track:a7628977fdf343f6a1aeefd2e42920a5987d33d1941a08de370d810a52f2d875` |
| 3 | `def` | [positiveOnsetAtom](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom.md) | 23 | `declaration-track:4cc812e79e305276886bf3d8f13ff35a69283524dbd2fd5832af46bef246d54b` |
| 4 | `def` | [positiveOnsetTail](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsettail.md) | 26 | `declaration-track:5f112a119caad9ed8ab449274b0caff26acd07b420672218e6866f30c22197df` |
| 5 | `theorem` | [powerOnset_pos](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/poweronset-pos.md) | 29 | `result-track:94203637d6a24c0b80c41dc4e277e44d391e3f2eef481990210b3346cfb92530` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/powerweight-nonneg.md) | 33 | `result-track:8c657a5bbaf3796d0034abee950d03077136d9c367230f8ba1247df4be9d7f4a` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-nonneg.md) | 38 | `result-track:58cb5a0636686cfa15e387311c8d1fae9845ecf302e69e8928f6d1cbac450caa` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-measurable.md) | 42 | `result-track:60c852b2d07d156ccee016c83e740e49d68148a32d06fd15b0f465c24801f161` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-integrable.md) | 46 | `result-track:5d1d6dc632a60e8fd5ca88198a3628bb49a8404dcc8e008005e3557e2d448ec2` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-integral.md) | 52 | `result-track:54c31ca1a22e9f2078b2d37d13fd95b7e7c80bc04cbf3a858b07e0d640309c0d` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-eq-omitted.md) | 60 | `result-track:7c450efc6bcce4b4d157ebf0be803df89125ed8cff16823f51bdf73ef6b032f9` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsetatom-le-zeromoment.md) | 66 | `result-track:52e95f93d91e57bd5e826dbe4aa04e4331755d0f6a935699b430bf726840d3a5` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsettail-summable.md) | 73 | `result-track:1c142010426731de5852a1294427436faffe1ae34c1043ccb9edf6dee43ed90e` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsettail-nonneg.md) | 78 | `result-track:0a6e128817278939fa960df089bb9ec13d9983b7d357db59a0dd6c2741fa599d` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsettail-measurable.md) | 81 | `result-track:74dec5e5cd9d5c86895d0748526c23a17cf00424837541d128aefb092c17c307` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../MeasureAndIntegration/Attempt01SourceEdition2.lean/declarations/positiveonsettail-eq-indicator.md) | 84 | `result-track:333775422058f9bc47ba85e0ec15b4f8e911de50b52e0617a7323322f31498f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=582a6152cf88350bf98c449aec678a0dcdb50f52aec8bcf370a3232228671393 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Attempt01/Variant5e66d77927450c6be39e8576523a00e78d1af68ca0bfe07b49554ef432e066a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
