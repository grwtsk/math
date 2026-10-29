# Verification target: Assembly DNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0cb83b5eb804c23b6880cb708754761cea6602f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0cb83b5eb804c23b6880cb708754761cea6602f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Functional` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/declarations/cratio.md) | 36 | `declaration-track:811541f84e7dba4121ed43fc99f21c63d6fe599ab4130af00f3ee51bd5ca1dfc` |
| 2 | `theorem` | [cRatio_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/declarations/cratio-flat.md) | 39 | `result-track:e2c2e466a1939f5630cc2059552d7d70fa8a3d5a9e7b6661a1b51484717444d6` |
| 3 | `theorem` | [N0star_lower_c](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/declarations/n0star-lower-c.md) | 49 | `result-track:e365939ca93d6ba6a8e285ba8044e81110285c03c4e1c171ea0c20707105467c` |
| 4 | `theorem` | [two_sub_inv_cStar](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/declarations/two-sub-inv-cstar.md) | 62 | `result-track:2712de128876f9a85f4ab48e50e3e31df5ab9b4bbe0517a7ec45548eb40142a2` |
| 5 | `structure` | [TracesBoundsD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyDNamespaced.lean/declarations/tracesboundsd.md) | 69 | `declaration-track:cfc915cb303bc7a7aeedb7c4c7245b495f26936473a2cbb8df437e786a1bf8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f205a4866ed4d21890acde2c3c8f05832339d3ad51af83ebdba9d32272df533a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
