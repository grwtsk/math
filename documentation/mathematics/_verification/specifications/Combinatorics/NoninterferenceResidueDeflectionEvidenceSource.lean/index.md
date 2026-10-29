# Verification target: Noninterference Residue Deflection Evidence Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd1c997a054f3c8fcc41a67da44210af3518f00a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/index.md) · [Full source](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd1c997a054f3c8fcc41a67da44210af3518f00a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.UnknownLedger` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueDeflectionEvidenceSource](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/residuedeflectionevidencesource.md) | 13 | `declaration-track:c90ce2c331ad41c60471de74f200aa1108b58cef25652b3d51249906dc390383` |
| 2 | `inductive` | [MayCloseResidueDeflection](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/maycloseresiduedeflection.md) | 27 | `declaration-track:07ef006c3e5b18cff2e280a0f8c2afa1a32c01d58501b092de5fdb6ec79276c5` |
| 3 | `theorem` | [observation_cannot_close](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/observation-cannot-close.md) | 71 | `result-track:0fc8040a329bec1b4f28dd83279ff4e6d7cbad9715eb53ce0ff2f928c272b98f` |
| 4 | `theorem` | [phase_cannot_close_bypass](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/phase-cannot-close-bypass.md) | 78 | `result-track:a3168c1cefca8aeff5a43b22f3c9561e4331a76f2d5083a19f47747afcffc76a` |
| 5 | `theorem` | [phase_cannot_close_arithmetic_trace](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/phase-cannot-close-arithmetic-trace.md) | 85 | `result-track:5c4e372c5aa211b85fdcf1233f31d00ee4275b3a4d65832b8185127ca75f0a9e` |
| 6 | `theorem` | [bypass_cannot_close_trace_compensation](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/bypass-cannot-close-trace-compensation.md) | 92 | `result-track:b9fb47e5bf884b6b42b96f0ebc6db4c82d05e9544b8f51904318a7eef9c66021` |
| 7 | `theorem` | [phase_cannot_remove_zero_obstruction](../../../../Combinatorics/NoninterferenceResidueDeflectionEvidenceSource.lean/declarations/phase-cannot-remove-zero-obstruction.md) | 99 | `result-track:1179689fb0b47c53b11f1eb66ebe2844280c83a0d2cefae47ddf9e6077a1041c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b678487c0caa7a22cee46187b71579b1c17b40cf09cf7175c71e32381cd13d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Noninterference/Variant6602559fef560294e3a05b450b8a6ace21eb2de0862820fa32ff51065180c44b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
