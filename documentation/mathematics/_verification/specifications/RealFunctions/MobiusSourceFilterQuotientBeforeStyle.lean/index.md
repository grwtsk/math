# Verification target: Mobius Source Filter Quotient Before Style

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10f7acd48b96692eded900568df402ee4140a59b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/index.md) · [Full source](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10f7acd48b96692eded900568df402ee4140a59b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [W](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w.md) | 21 | `declaration-track:7ffc3d4fa8adc8331a0bd0f6e8dc6c2aefaf8379caf8751559e6b85fe83c2507` |
| 2 | `theorem` | [W_half_zero](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w-half-zero.md) | 24 | `result-track:b4d15eafe7597ac2038aad3ea9a566df43d693fc9658e6ece24fbda0d4ccb5d5` |
| 3 | `theorem` | [W_hasDerivAt_half](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w-hasderivat-half.md) | 28 | `result-track:95087385edaefff07ed649e858928d378bcbe5cc02de6b7f26a796d1ab2e804e` |
| 4 | `theorem` | [W_deriv_half](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w-deriv-half.md) | 35 | `result-track:5a791565ab2035bd982a99c339789449c9d498de8865b46534bbc9fabe59cd8d` |
| 5 | `theorem` | [W_deriv_half_ne_zero](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w-deriv-half-ne-zero.md) | 42 | `result-track:c185818f397e336bcaff1acfb1c8e003617c07485bbf9b520113aeeacb93a119` |
| 6 | `theorem` | [W_removed_half_limit](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/w-removed-half-limit.md) | 46 | `result-track:801801d35ef70af8b2246b9b83bff986110410719cc1a8c91fc13dcfc49f7377` |
| 7 | `theorem` | [correctedNumerator_div_W_limit](../../../../RealFunctions/MobiusSourceFilterQuotientBeforeStyle.lean/declarations/correctednumerator-div-w-limit.md) | 58 | `result-track:2b3163f71e2938e8b9dff4adfb765b2b9159b461e254259d0c21244d100b88ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf7f7a2b76d991cdaa3e3879687a6166ff68d011aac3fb7125c4d828f7f823e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
