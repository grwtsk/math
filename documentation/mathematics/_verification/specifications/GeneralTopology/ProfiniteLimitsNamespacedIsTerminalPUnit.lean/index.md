# Verification target: Profinite Limits Namespaced Is Terminal PUnit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f9d481ed32d3ced9f873ab21526db95a5dea286",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant0649a1d0aa4e414130c11f391fd049b807c6d7be750cfc2f11720cc93828c9f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f9d481ed32d3ced9f873ab21526db95a5dea286`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant0649a1d0aa4e414130c11f391fd049b807c6d7be750cfc2f11720cc93828c9f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant0649a1d0aa4e414130c11f391fd049b807c6d7be750cfc2f11720cc93828c9f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/declarations/instance.md) | 30 | `declaration-track:25f34c94b92bbf09c7547dec2b5218aa9bebf3158cf5d63ceef55ca2a6a91d66` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/declarations/instance-source-edition-2.md) | 34 | `declaration-track:ab409353002dd2bcb4703c7bd7ff20d661ee5c12141608b6e9f7d0f192bcd873` |
| 3 | `abbrev` | [isTerminalPUnit](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/declarations/isterminalpunit.md) | 39 | `declaration-track:e479be47c0d5a03cdfeae1099ce9cfb3a370b87946e5331997e6a4e363439170` |
| 4 | `example` | [(anonymous)](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/declarations/example.md) | 41 | `declaration-track:5bd1eb4e0e1d773d7d9d2515c578500b75bb89c82441cc3735f446ff33659408` |
| 5 | `example` | [(anonymous)](../../../../GeneralTopology/ProfiniteLimitsNamespacedIsTerminalPUnit.lean/declarations/example-source-edition-2.md) | 43 | `declaration-track:aa418caf893b5b2daa2b140cbcb1d782aa49bc94011c0b8e3b5714ca6bab879b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311bc39945436a7aa9d282eea1b19efca21d43a1325a27754144a99f362d8438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Limits/Variant0649a1d0aa4e414130c11f391fd049b807c6d7be750cfc2f11720cc93828c9f7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Limits/Variant0649a1d0aa4e414130c11f391fd049b807c6d7be750cfc2f11720cc93828c9f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
