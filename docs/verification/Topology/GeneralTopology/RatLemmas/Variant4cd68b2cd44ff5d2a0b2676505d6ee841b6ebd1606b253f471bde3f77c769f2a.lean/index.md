# Verification target: GRWTSK.Topology.GeneralTopology.RatLemmas.Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b58ae719a899b6fff1e3a72b07addec5d261f508",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b58ae719a899b6fff1e3a72b07addec5d261f508`.

Source path: `GRWTSK/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/interior-compact-eq-empty--f75a7ba0f99eae8536a2568c.md) | 47 | `result-track:f75a7ba0f99eae8536a2568c3d2952c00cf518ef2aa858887a63afce016f38de` |
| 2 | `theorem` | [dense_compl_compact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/dense-compl-compact--8b6b4ed7e0050d2fedb9507e.md) | 50 | `result-track:8b6b4ed7e0050d2fedb9507ec73d67fc3b09debb68ab53f914772ad5b4feb5d5` |
| 3 | `instance` | [cocompact_inf_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/cocompact-inf-nhds-nebot--ad7b6c1ec73dbf5029fcfbbf.md) | 53 | `declaration-track:ad7b6c1ec73dbf5029fcfbbf73873f3e86ecdd7fe1df55a3af455a29484ab2b7` |
| 4 | `theorem` | [not_countably_generated_cocompact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/not-countably-generated-cocompact--32109d257f7b253735a97ac7.md) | 58 | `result-track:32109d257f7b253735a97ac7b739ee1e69c0c68ce391a59c23b8a33a51bba543` |
| 5 | `theorem` | [not_countably_generated_nhds_infty_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/not-countably-generated-nhds-infty-opc--7bb8fb662fe2a00a46a4d5e0.md) | 66 | `result-track:7bb8fb662fe2a00a46a4d5e0993e0d684506ca0acf146fc4d192422352427b92` |
| 6 | `theorem` | [not_firstCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/not-firstcountabletopology-opc--051f79cc90e2fbca1979a576.md) | 72 | `result-track:051f79cc90e2fbca1979a576576a1e7dfe03d0b0cdac90fcf40af33d59725d93` |
| 7 | `theorem` | [not_secondCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/not-secondcountabletopology-opc--7a379a689a648a46ca64b13c.md) | 76 | `result-track:7a379a689a648a46ca64b13c5f66fb478f1488edf71de9a5fe4261ea76af10da` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant4cd68b2cd44ff5d2a0b2676505d6ee841b6ebd1606b253f471bde3f77c769f2a.lean/declarations/instance--02870af9194ba4697755b55a.md) | 80 | `declaration-track:02870af9194ba4697755b55aeda84a59d9692d81c6019564b20d6b0830157be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
