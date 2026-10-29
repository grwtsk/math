# Verification target: GRWTSK.Analysis.Complex.VerticalReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c797536a75b7ac2a2d2209f5eac1e06a8e0c7024",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/VerticalReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c797536a75b7ac2a2d2209f5eac1e06a8e0c7024`.

Source path: `GRWTSK/Analysis/Complex/VerticalReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/VerticalReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalReflection](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/criticalreflection.md) | 20 | `declaration-track:e34404f95fca1279827fc112041f2c7b44ee2cd32c694fbe7e11b072f1880316` |
| 2 | `def` | [criticalCenter](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/criticalcenter.md) | 24 | `declaration-track:84c3c114e9036405203d2da0c46776fc43093471dcb7adf9f341de4419aca505` |
| 3 | `def` | [horizontalDefect](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/horizontaldefect.md) | 26 | `declaration-track:c564f4b57f62b08ac215b780037be5f39d70dbed8dd9206717a0790fa5e429de` |
| 4 | `theorem` | [critical_reflection_re](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-reflection-re.md) | 28 | `result-track:ddd9df12f03520c9de9c1e504a3e3642afaca8b5d020d0a4747da0aa761e728f` |
| 5 | `theorem` | [critical_reflection_im](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-reflection-im.md) | 31 | `result-track:d6daee5746836e5554efdbf900243428d9cd15eff64061a6555045c8712bf025` |
| 6 | `theorem` | [critical_reflection_involutive](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-reflection-involutive.md) | 34 | `result-track:9a707e8b2fe6b2af8fddb9889c4a47bd9e2345d0c6e875a6504c215cbf266e5c` |
| 7 | `theorem` | [critical_reflection_fixed_iff](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-reflection-fixed-iff.md) | 38 | `result-track:95df9f6f1d59782079e843c4f1763f617f20bb9a857afeb115868df066d977c7` |
| 8 | `theorem` | [center_defect_reconstruct](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/center-defect-reconstruct.md) | 51 | `result-track:ce8a9833ac0aa1b1383c673ada7c28aa28ff6e254e1d68c740e2cb08a7e225e7` |
| 9 | `def` | [criticalPacket](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/criticalpacket.md) | 58 | `declaration-track:7bb9b4890afbbd6f181cef33bb511586603c52ea017a75e9774932f6d48541fe` |
| 10 | `theorem` | [critical_packet_reconstruct](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-packet-reconstruct.md) | 61 | `result-track:f5a947efde04c7c67ee6dcf11ef2018a09d3418b1b18483dd3cae46330a205ac` |
| 11 | `theorem` | [critical_packet_injective](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-packet-injective.md) | 65 | `result-track:a6e23520bf6e43137e4d4ee8d0cf444549f06fe777eaa279055d936208fcbb64` |
| 12 | `theorem` | [reflected_defect](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/reflected-defect.md) | 70 | `result-track:41f82ee3bfc4c9da24eade5ff170021538df286aa5ce19adcba9ce9a24ec6686` |
| 13 | `theorem` | [center_on_critical_line](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/center-on-critical-line.md) | 75 | `result-track:3fab9cd844b1c92789c2aca8d69bbe9dbaff4f86f7688b41a40aff11c61a0093` |
| 14 | `theorem` | [center_equals_source_iff](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/center-equals-source-iff.md) | 77 | `result-track:f0021e8b7455a550c630af01e9cbed77897ec0fef235a324d039ad88613921b3` |
| 15 | `theorem` | [critical_line_of_defect_vanishing](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-line-of-defect-vanishing.md) | 90 | `result-track:57133eb978cd17a8f661111b3da3c4cb345886d103b22ea2aba329cbfd4d13f9` |
| 16 | `theorem` | [critical_projection_discards_defect](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/declarations/critical-projection-discards-defect.md) | 97 | `result-track:06b82d31067ebd4e6722af7dc43fe069e770d30ea7d219ebb0d401342c987077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ce5a2bde44a4a7b6c568bff3ce1821d4d652b51dbadeadd7c86bcb0f4b85863 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/VerticalReflection.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrence88e893dfbad19da3c2403f73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
