# Verification target: Rat Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee13837a218107421cd1896a2fc4a7617f437aeb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6cb9b16f5c1106aea92b70ecc7027fee33d0d5648e77f6a3ff7af5af76c3f874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RatLemmas.lean/index.md) · [Full source](../../../../GeneralTopology/RatLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee13837a218107421cd1896a2fc4a7617f437aeb`.

Source path: `GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6cb9b16f5c1106aea92b70ecc7027fee33d0d5648e77f6a3ff7af5af76c3f874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RatLemmas/Variant6cb9b16f5c1106aea92b70ecc7027fee33d0d5648e77f6a3ff7af5af76c3f874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interior_compact_eq_empty](../../../../GeneralTopology/RatLemmas.lean/declarations/interior-compact-eq-empty.md) | 41 | `result-track:a784ae558a463e713c067ec342c02a1dbc76bdc2c90fdce4b79910a49b5a19df` |
| 2 | `theorem` | [dense_compl_compact](../../../../GeneralTopology/RatLemmas.lean/declarations/dense-compl-compact.md) | 44 | `result-track:702dabc3ffb4f4b3436d8095bf39b36540f8e6923cb0a16f3a33eeed359be42e` |
| 3 | `instance` | [cocompact_inf_nhds_neBot](../../../../GeneralTopology/RatLemmas.lean/declarations/cocompact-inf-nhds-nebot.md) | 47 | `declaration-track:51a47a6a5fcfee997ded4731e9b358cff93a773b65e1de7456d0ed7a4170ec23` |
| 4 | `theorem` | [not_countably_generated_cocompact](../../../../GeneralTopology/RatLemmas.lean/declarations/not-countably-generated-cocompact.md) | 52 | `result-track:497c28b8553d5e9fbd837adf800ced965e34eed709d366dbe7aa3a768748ae5b` |
| 5 | `theorem` | [not_countably_generated_nhds_infty_opc](../../../../GeneralTopology/RatLemmas.lean/declarations/not-countably-generated-nhds-infty-opc.md) | 60 | `result-track:e5089f00b6d001c8dc6605470372a060e4a67f6090e6cac255967a6fa1d3139e` |
| 6 | `theorem` | [not_firstCountableTopology_opc](../../../../GeneralTopology/RatLemmas.lean/declarations/not-firstcountabletopology-opc.md) | 66 | `result-track:db8c93d97085aa849d078d0836d39ed99194d41d158bf48fb0d47842609ecd6b` |
| 7 | `theorem` | [not_secondCountableTopology_opc](../../../../GeneralTopology/RatLemmas.lean/declarations/not-secondcountabletopology-opc.md) | 70 | `result-track:05813faa64f3c189d8785b11a34791abfecf5fb5bd0db754900b86e440b601fd` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/RatLemmas.lean/declarations/instance.md) | 74 | `declaration-track:33feee265fa556f42ec2e96086f0b223bdc8b9cad841b1fbc9a02dd4b7117ceb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a704e2b6e62cad5b2f67b89a48cced3563b8f0559f4420ff3f39eae414885728 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6cb9b16f5c1106aea92b70ecc7027fee33d0d5648e77f6a3ff7af5af76c3f874.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RatLemmas/Variant6cb9b16f5c1106aea92b70ecc7027fee33d0d5648e77f6a3ff7af5af76c3f874.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
