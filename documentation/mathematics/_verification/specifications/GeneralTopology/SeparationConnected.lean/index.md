# Verification target: Separation Connected

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "476e894d1c3277d0b28350a4d3fe8a6654aeda75",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Connected/Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationConnected.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationConnected.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `476e894d1c3277d0b28350a4d3fe8a6654aeda75`.

Source path: `GRWTSK/Topology/GeneralTopology/Connected/Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Connected/Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationConnected.lean/declarations/instance.md) | 19 | `declaration-track:1a2c3c2ebf3ca151d566add2e36306642607d5c6abb605469844adcfbf41f41c` |
| 2 | `theorem` | [PreconnectedSpace.trivial_of_discrete](../../../../GeneralTopology/SeparationConnected.lean/declarations/preconnectedspace-trivial-of-discrete.md) | 26 | `result-track:6772b1e4b4f5f2dc87596ab96941dcdbac4681e5cf4d1ed02928d80af68dc899` |
| 3 | `theorem` | [IsPreconnected.infinite_of_nontrivial](../../../../GeneralTopology/SeparationConnected.lean/declarations/ispreconnected-infinite-of-nontrivial.md) | 33 | `result-track:7310e238d67b23ca1915aff80e372c3d9c9ab951d63df31e507170459bcb0490` |
| 4 | `theorem` | [PreconnectedSpace.infinite](../../../../GeneralTopology/SeparationConnected.lean/declarations/preconnectedspace-infinite.md) | 39 | `result-track:e76e0916f85aced13924e4ea44c00d38f4dc51e284ab9a058ec9b07772c09ca7` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationConnected.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:82f63cd747377bf3033d7012a4d2e3c8641459a569f710347e0c2f48cee0e1e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63ebd9acae7c87a0df9f7552e57ce75287b155c979486e4c6ab73a5ecec7bd96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Connected/Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Connected/Variant2e52700eb3e9e8261f38ecc92a764f75fbc43a92ddfa9a53bdb9b4ba2c33fd45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
