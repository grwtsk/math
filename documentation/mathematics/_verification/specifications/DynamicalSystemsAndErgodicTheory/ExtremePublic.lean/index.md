# Verification target: Extreme Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ca8e4b91dbc051011acf197bafe76bc0be7308",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ca8e4b91dbc051011acf197bafe76bc0be7308`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean.json)

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
| 1 | `theorem` | [of_mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/of-mem-extremepoints-measure-univ-eq.md) | 32 | `result-track:8bf5faf8d1114c619c0dc7f92cc2c08220b3c4eb43d29db3d86ad0c62a6f6c56` |
| 2 | `theorem` | [of_mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/of-mem-extremepoints.md) | 63 | `result-track:f574d784a69f4be65325a63006cc7b03d059e821635bf64e99a3ae64e2f33ff3` |
| 3 | `theorem` | [eq_smul_of_absolutelyContinuous](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/eq-smul-of-absolutelycontinuous.md) | 70 | `result-track:dc75d395cb3a077b082159c5535b8e3c2fb4b8e0aca86f902c82a1e05c246413` |
| 4 | `theorem` | [eq_of_absolutelyContinuous_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/eq-of-absolutelycontinuous-measure-univ-eq.md) | 81 | `result-track:75067f307ec9bdd910163e2b6d53c0a9d0ccfb1f819d6b165f9332090baf6299` |
| 5 | `theorem` | [eq_of_absolutelyContinuous](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/eq-of-absolutelycontinuous.md) | 89 | `result-track:ede22ef30581e2d536fb767c5c8b742831e3fdda9f5883bf24a557cd4fb4472a` |
| 6 | `theorem` | [mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/mem-extremepoints-measure-univ-eq.md) | 93 | `result-track:796265bc339823db0795adb5e1210f38df6f2ed910d9eb0d0e8fad9eafb9fa2d` |
| 7 | `theorem` | [mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/mem-extremepoints.md) | 102 | `result-track:67ae445d966e117331274b55cf0d613e9af8b7df296bc5882a6c91f402b8d2f6` |
| 8 | `theorem` | [iff_mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/iff-mem-extremepoints-measure-univ-eq.md) | 106 | `result-track:2bb5e840d4efa4bfad5e432599cac35216d05850f948b8ac99ac417532ace3ed` |
| 9 | `theorem` | [iff_mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/ExtremePublic.lean/declarations/iff-mem-extremepoints.md) | 110 | `result-track:53e036934782ff63ac9cce73d6be562b757c60740d4f3815d57005f607c77905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70c7e5c1f5d8a39d68182223eb11fdb5e472cea8bf7ef362159e940698d21d88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
