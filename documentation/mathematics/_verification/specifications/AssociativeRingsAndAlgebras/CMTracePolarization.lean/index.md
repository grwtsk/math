# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMTracePolarization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f24936d9a87154725fa76c4837f3ace0601f651",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMTracePolarization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f24936d9a87154725fa76c4837f3ace0601f651`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMTracePolarization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMTracePolarization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMNumberFieldIndex`](../../../../Geometry/CMNumberFieldIndex.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.RingTheory.Discriminant` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trace_complexConj](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/trace-complexconj.md) | 38 | `result-track:1f786132c96e2804976ed1862eb652d656dbcd0ea7b76aa1ee3b17cb0838278f` |
| 2 | `def` | [tracePairing](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing.md) | 48 | `declaration-track:a9fe4aa1a7d615be7fff33c559ec0a972186e3dc5cc517508260ad658d32daa7` |
| 3 | `structure` | [TracePolarizationData](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepolarizationdata.md) | 52 | `declaration-track:7825fcf9fa7525a7cf372512ed5e9c04dd34e49bd6bd939d5c6e2fa56b4b0912` |
| 4 | `theorem` | [galoisComplexConj_ne_one](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/galoiscomplexconj-ne-one.md) | 58 | `result-track:1271c1240a13bbd61565e27369a07da82862210a2e22b7b003d25554553b794f` |
| 5 | `theorem` | [exists_nonfixed](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/exists-nonfixed.md) | 68 | `result-track:cdce1d42b2e5f9013029b6731a3f830a25df6f575fd9d6b66515fed5e84c8733` |
| 6 | `def` | [antiInvariantPart](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/antiinvariantpart.md) | 74 | `declaration-track:3e10646c549cefb4cfc5a53c87e77acdbfce59595cec6b927f052e21bd89fe80` |
| 7 | `theorem` | [antiInvariantPart_conj](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/antiinvariantpart-conj.md) | 78 | `result-track:b1cb5b08aa35ed1f6d209fe184e16a8e78f1b09d01beb428d08d14619020e54d` |
| 8 | `theorem` | [antiInvariantPart_ne_zero](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/antiinvariantpart-ne-zero.md) | 84 | `result-track:9b4aeca13895e3ac3481c53c1995d690f537f7d315f9ea9601de198e8da7384a` |
| 9 | `def` | [tracePolarizationDataOfNonfixed](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepolarizationdataofnonfixed.md) | 92 | `declaration-track:9c3169dfabd880073d04129821243f8b1c284b21a348f78719ec8eeeb0d27bf4` |
| 10 | `def` | [someTracePolarizationData](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/sometracepolarizationdata.md) | 101 | `declaration-track:95cc64a6c7262b08626451b325118f607b1d24f39e4cf37f8a79233c3673e086` |
| 11 | `theorem` | [tracePairing_skew](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing-skew.md) | 105 | `result-track:4011935e56e57e41095453781755de4c6bdd97b640518131afc192af7cadcb5f` |
| 12 | `theorem` | [tracePairing_self](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing-self.md) | 119 | `result-track:0b7096393d346fd384fa5c7509a9fb600df0e1968c2d22725b971397108aa0b1` |
| 13 | `theorem` | [tracePairing_left_nondegenerate](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing-left-nondegenerate.md) | 126 | `result-track:2562f7c5332f5711b0ca94055f2d0f6eb2baf8e09f580bc246aea09ba33fd6d8` |
| 14 | `theorem` | [tracePairing_right_nondegenerate](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing-right-nondegenerate.md) | 139 | `result-track:63a60daee61e6da7ea9c6e8ef8de8c1a98da9d18e762a78921a5db4336ce00b4` |
| 15 | `theorem` | [tracePairing_alternating_nondegenerate](../../../../AssociativeRingsAndAlgebras/CMTracePolarization.lean/declarations/tracepairing-alternating-nondegenerate.md) | 150 | `result-track:e68ed92a5ff62995529e60096272b0a63fb6b0c01df0007303d3a3269754b712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7757cd577b4affa3e9ae124eab5974060746bb2a4185fe38a3a0e5a39b69329b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/Hodge/CMTracePolarization.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Hodge/CMTracePolarization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
