# Verification target: Cantor Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d11df97e86b0adaa0210738137f85ba9d4bafa9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cantor/Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CantorEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/CantorEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d11df97e86b0adaa0210738137f85ba9d4bafa9`.

Source path: `GRWTSK/Topology/GeneralTopology/Cantor/Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cantor/Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CantorTopologyCapability](../../../../GeneralTopology/CantorEdition2.lean/declarations/cantortopologycapability.md) | 18 | `declaration-track:95741a22f470aeaa100c74b669005b64f5c4612001507d67d264db60dd52f2e2` |
| 2 | `structure` | [HomeomorphicBaselineCapability](../../../../GeneralTopology/CantorEdition2.lean/declarations/homeomorphicbaselinecapability.md) | 35 | `declaration-track:d22459413e3b38b77b36f66b802b2be431cd66b3a2e498e460d4b2a0ec692c5e` |
| 3 | `theorem` | [compact_univ](../../../../GeneralTopology/CantorEdition2.lean/declarations/compact-univ.md) | 49 | `result-track:09f69aee93466802acd7f6670921f7236f138f8d95d9fb089c6aa54aa2710fbf` |
| 4 | `theorem` | [connected_subsets_are_singletons](../../../../GeneralTopology/CantorEdition2.lean/declarations/connected-subsets-are-singletons.md) | 56 | `result-track:36816f9796611675a4f209547cbd632df1fec176c14eb443d817822343c5e00c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d94234c1ade79fd9517adfb399bc49fc9f3ae3c1849b44d4869564ba652ef945 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cantor/Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Cantor/Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
