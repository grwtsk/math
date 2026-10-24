# Verification target: GRWTSK.Topology.GeneralTopology.Rolle.Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26a2c0eec3cbd9bff6ca13ace15f6464099ca1fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26a2c0eec3cbd9bff6ca13ace15f6464099ca1fd`.

Source path: `GRWTSK/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean.json)

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
| 1 | `theorem` | [exists_Ioo_extr_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-ioo-extr-on-icc--c1f52dd94c3dc6bdb7a4fc91.md) | 40 | `result-track:c1f52dd94c3dc6bdb7a4fc914a25b1df8d6ed56f7cb77582dc1db290ddb6333a` |
| 2 | `theorem` | [exists_isLocalExtr_Ioo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-islocalextr-ioo--88af502dec709228332abea3.md) | 62 | `result-track:88af502dec709228332abea324c7681aac2a46db069d2bc9143711077e51152f` |
| 3 | `lemma` | [exists_isExtrOn_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-isextron-ioo-of-tendsto--a426cbfe20f6b7d255fe27b9.md) | 69 | `result-track:a426cbfe20f6b7d255fe27b996320731fee439ae24b521c61c48bf4b9100a1cf` |
| 4 | `lemma` | [exists_isLocalExtr_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-islocalextr-ioo-of-tendsto--a4bcf1292cc9e34daa9424fe.md) | 81 | `result-track:a4bcf1292cc9e34daa9424fe5b71953e167a5755cb38bb3fcb90e7543d7a7aaa` |
| 5 | `theorem` | [exists_uIoo_isExtrOn_uIcc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-uioo-isextron-uicc--1fd0409bad91aee5b127b309.md) | 89 | `result-track:1fd0409bad91aee5b127b309087311d573443821f693be6ccb1ee93fb7c4263d` |
| 6 | `theorem` | [exists_isLocalExtr_uIoo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-islocalextr-uioo--25ddb39865db4fe62afbdb41.md) | 96 | `result-track:25ddb39865db4fe62afbdb414a3ffaabcb53f61e993e9ab3c600c7a6b4dd334d` |
| 7 | `lemma` | [exists_isExtrOn_uIoo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-isextron-uioo-of-tendsto--2adf4d466859ae44e62bd112.md) | 103 | `result-track:2adf4d466859ae44e62bd11299a4bc1a828cf5b1bb2da6198a63bf25e90062ce` |
| 8 | `lemma` | [exists_isLocalExtr_uIoo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/declarations/exists-islocalextr-uioo-of-tendsto--8109e5160955818aa2a9f913.md) | 115 | `result-track:8109e5160955818aa2a9f9132919bfc88521c75bd6a412e1784ac9ab940f71b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
