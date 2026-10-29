# Verification target: Smart Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "406c6c63b3f06bd880bf7e35620ee307bc2c187f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SmartNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/SmartNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `406c6c63b3f06bd880bf7e35620ee307bc2c187f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds.Core` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkLowerBoundSmart](../../../../RealFunctions/SmartNamespaced.lean/declarations/checklowerboundsmart.md) | 59 | `declaration-track:fbf1c1af21a2c0f3e5a0b4c2eeccaca1c1f5589d53298d928561b22c605cdbec` |
| 2 | `def` | [checkUpperBoundSmart](../../../../RealFunctions/SmartNamespaced.lean/declarations/checkupperboundsmart.md) | 82 | `declaration-track:133b68fc20ce7b1f6de3422a31ab62d85402f5a3cb237bc6429fb0d2433e25b3` |
| 3 | `theorem` | [increasing_min_at_left_core](../../../../RealFunctions/SmartNamespaced.lean/declarations/increasing-min-at-left-core.md) | 100 | `result-track:463832db99c6c3c85913457d81707a3e0471ef6f907b55c9cd90fff55f1bfa0f` |
| 4 | `theorem` | [decreasing_min_at_right_core](../../../../RealFunctions/SmartNamespaced.lean/declarations/decreasing-min-at-right-core.md) | 143 | `result-track:af34be0243fec70af3477a1f8e5e5fe7079b8c065f5d52daae863f2fa1cc9718` |
| 5 | `theorem` | [verify_lower_bound_smart](../../../../RealFunctions/SmartNamespaced.lean/declarations/verify-lower-bound-smart.md) | 179 | `result-track:41e5fa2c2aecf2cf084fbc71ec593f7a839541b18b1b2a728151bbe176414e14` |
| 6 | `theorem` | [increasing_max_at_right_core](../../../../RealFunctions/SmartNamespaced.lean/declarations/increasing-max-at-right-core.md) | 228 | `result-track:897eea098a04a755fa9b045bffd014a3455a53e9528274b1b752154433d8d1be` |
| 7 | `theorem` | [decreasing_max_at_left_core](../../../../RealFunctions/SmartNamespaced.lean/declarations/decreasing-max-at-left-core.md) | 264 | `result-track:1368aa660a4212c662caafef9546f1e476294377d22314c8ef547d38b5e7f155` |
| 8 | `theorem` | [verify_upper_bound_smart](../../../../RealFunctions/SmartNamespaced.lean/declarations/verify-upper-bound-smart.md) | 300 | `result-track:fc139c803a57b7ed1786234d34eef40ecfd64c29d10402f0c07036e56f8c5e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d427a590eff29eb05f0e3989f490902914d1c6e5769a1563fc1af65e41fd1b97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
