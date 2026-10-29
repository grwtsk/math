# Verification target: Inner Product Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db682498c2c748fa13797ead0f4300e94bc8a53d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant4c3bb33274f362609dc1905537b52f54a2dba396df37d16665fe261213cfcd8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/InnerProductNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/InnerProductNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db682498c2c748fa13797ead0f4300e94bc8a53d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant4c3bb33274f362609dc1905537b52f54a2dba396df37d16665fe261213cfcd8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant4c3bb33274f362609dc1905537b52f54a2dba396df37d16665fe261213cfcd8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conformalAt_iff'](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalat-iff.md) | 39 | `result-track:0d54eece27c120664669bbb5851b9f071be16a4ba210b834c95049c14a3a2908` |
| 2 | `theorem` | [conformalAt_iff](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalat-iff-source-edition-2.md) | 45 | `result-track:261f2668443ddcf220eb494327ee56f97fc533c371411cdd1d274f7758628e88` |
| 3 | `def` | [conformalFactorAt](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalfactorat.md) | 51 | `declaration-track:afa898cdc88fa457c85ce0ec51d619305b998ea406f46b4bdd4759ab099c7cdc` |
| 4 | `theorem` | [conformalFactorAt_pos](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalfactorat-pos.md) | 54 | `result-track:c2ee34616ed1ec5f7b3a894db3430294065ce0e7eb6bbab54d0d6b43ddbca18a` |
| 5 | `theorem` | [conformalFactorAt_inner_eq_mul_inner'](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalfactorat-inner-eq-mul-inner.md) | 57 | `result-track:4d5d349635ea1af3fc53b0268858d092b890191a066585cfa4910e768d666fec` |
| 6 | `theorem` | [conformalFactorAt_inner_eq_mul_inner](../../../../RealFunctions/InnerProductNamespacedPublic.lean/declarations/conformalfactorat-inner-eq-mul-inner-source-edition-2.md) | 61 | `result-track:feba93c9d798e4637a93fe18610bc39c1334aaac6281c570360d3da9b8584fb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11c215e9dd39adef47078cbc5784ec56fb6e5be5bcc3b7647ee1ac1e41f810e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant4c3bb33274f362609dc1905537b52f54a2dba396df37d16665fe261213cfcd8e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant4c3bb33274f362609dc1905537b52f54a2dba396df37d16665fe261213cfcd8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
