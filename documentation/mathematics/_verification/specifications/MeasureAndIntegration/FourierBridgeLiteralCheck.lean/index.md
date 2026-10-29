# Verification target: Fourier Bridge Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70745bc7afe2c033ccf890793947dc6bce062130",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70745bc7afe2c033ccf890793947dc6bce062130`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/integral-fourierinv-mul-eq.md) | 12 | `result-track:dfbed6f10fcd8bdc30f1f4d81dacfe50c4ddce96757d84fcf8ebf459f94c82da` |
| 2 | `theorem` | [continuous_fourierInv](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/continuous-fourierinv.md) | 26 | `result-track:b964d59114108d3a7d5167aa678ab5bad5b59bf7fa1878a98ee726b6491fd59e` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/fourierinv-tolp-ae.md) | 33 | `result-track:c7ddbf7eb28be7d662225a4758486e27241a1f34dad1d43c6d67a2539156d17b` |
| 4 | `theorem` | [fourierInv_memLp](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/fourierinv-memlp.md) | 64 | `result-track:4cb3ccec1256ab32ab16e1e20eb7b8f2445972cb0c5beda2c44e93f15d6eea1a` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/fourierinv-tolp-eq.md) | 69 | `result-track:2ae3e3faaba2b3da3d38d6256b6d89394da257150bb2d2865f3b0799ce6fea0e` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/norm-fourierinv-tolp.md) | 75 | `result-track:9324578b32c2e04748de92b77633ac16123fb218c780384cf61e3acc2714bb18` |
| 7 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example-source-edition-2.md) | 87 | `declaration-track:1eedc8cd1825040aab5fcd1345a064b32302efbf8a57003f85eb5621b7a48f47` |
| 8 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example-source-edition-6.md) | 91 | `declaration-track:d89f506ce4401b76f900eac38d12e6d4eaf5be446d2cbfeb2fbda17058896ed2` |
| 9 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example-source-edition-4.md) | 94 | `declaration-track:870efa807bedf501fe71fc79089b9a0357b3ed14b91f84cb7c9d8cad5c8364ff` |
| 10 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example-source-edition-3.md) | 98 | `declaration-track:79785c473712cfc212a0e04ef38f412a9ef0d7f45455920767f83d0680089571` |
| 11 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example-source-edition-5.md) | 101 | `declaration-track:89f1a40964206bd0d3f741c5a059bfeeb0357e74fefe9c66b244e9dde446d617` |
| 12 | `example` | [(anonymous)](../../../../MeasureAndIntegration/FourierBridgeLiteralCheck.lean/declarations/example.md) | 105 | `declaration-track:1a1357f5d925fefd975f9c9a6e171359aec7d4b9801cd515fb59f653d23baff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c87117a2d7c342e658cfa4ccd0f96856b531e25537aec1191a99e3b3c903e2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
