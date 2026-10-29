# Verification target: Subsemigroup Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cafbc662b7ed9334484b2b0fe07eb0afc8772d8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant643909116766ed6c9418c93714105d48a7f4c34d4b73c69ecd281d74a59ad735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cafbc662b7ed9334484b2b0fe07eb0afc8772d8`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant643909116766ed6c9418c93714105d48a7f4c34d4b73c69ecd281d74a59ad735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant643909116766ed6c9418c93714105d48a7f4c34d4b73c69ecd281d74a59ad735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:969cc642f5bded9dc35e0c90e887ae1f2370a113547e54ba823bde15c939de24` |
| 2 | `theorem` | [coe_sInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/coe-sinf.md) | 65 | `result-track:0474c9cbcde69ab62b70e0810161b4375f840c144c38a70f463cfcf1ee83eaac` |
| 3 | `theorem` | [mem_sInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/mem-sinf.md) | 69 | `result-track:5276430cb6fd678d3ba271e141e6751d77222b5697c54b6b72bfb023fe35d79f` |
| 4 | `theorem` | [mem_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/mem-iinf.md) | 73 | `result-track:11005fe28a58318a0dd44d918defbf3a79d2165340984d069475859e49dda9b4` |
| 5 | `theorem` | [coe_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/coe-iinf.md) | 77 | `result-track:e89f3f781ec00974c1616b37ba88c0c3870be537fc2637a552bbc481282d450c` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/instance.md) | 82 | `declaration-track:617c3a95445dc558b71e5b77ca5e403d441a6bb2dafd0eef2146c501e27ad211` |
| 7 | `def` | [closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure.md) | 99 | `declaration-track:f83cb82a3dc1da31195f3cfa9eaa5a9843ffc712352b874a9ce0d3a92bd8d6e4` |
| 8 | `theorem` | [mem_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/mem-closure.md) | 103 | `result-track:f5c0498c7d4e3b995f2d7d1a93e010f4b2a4de621d1e2cac29ec340fa7338121` |
| 9 | `theorem` | [subset_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/subset-closure.md) | 109 | `result-track:a626977d41c7d76333b01534fde7706b8b163f512c6b6c58457b882f313cb1c9` |
| 10 | `theorem` | [notMem_of_notMem_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/notmem-of-notmem-closure.md) | 112 | `result-track:bb34e57d71f300370fb7303ce042f7b3af2a36493de0de71b75bd7c94313a6a3` |
| 11 | `theorem` | [closure_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-le.md) | 128 | `result-track:9633f855e09461a4abf0decd63a98af1114d6ab45c2ef6a3417fd90b32d80034` |
| 12 | `theorem` | [closure_mono](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-mono.md) | 135 | `result-track:312b3aa23c990279b4c5a3c795a14688d50fb767a2b9380b06a57afe0254ea2a` |
| 13 | `theorem` | [closure_eq_of_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-eq-of-le.md) | 139 | `result-track:1f44b95a1c5adad4c0cbec9bd72dce331411084fbc7728df17f56107672f4134` |
| 14 | `theorem` | [closure_induction](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-induction-source-edition-2.md) | 149 | `result-track:f844b4576f417f45554eb6e937f5f0ae1d922c45717632fc10afb35db2e2f4ea` |
| 15 | `theorem` | [closure_induction₂](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-induction.md) | 161 | `result-track:be8713f57f799c1d47274dbbda8b44b26350635e58f968213c9fb3ffd29b6d91` |
| 16 | `theorem` | [dense_induction](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/dense-induction.md) | 179 | `result-track:4b5a8d08282513bda162b9fa33851c9d5d5be3674dbe2fe597fae2bc82b1484a` |
| 17 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/example.md) | 190 | `declaration-track:cb200b7046f7e4cb10c4aecaa4e448d65135c8647ce4a28ef58def7f3089226a` |
| 18 | `def` | [gi](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/gi.md) | 202 | `declaration-track:cb52696a7d879a17ae4552a5d1e31e9312b0d1e9990935d41004316442b63a44` |
| 19 | `theorem` | [closure_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-eq.md) | 209 | `result-track:cfbfa5af211988cfc320d59c5489d94bb0b3fe768a6d5a00670531ca30e1f26b` |
| 20 | `theorem` | [closure_empty](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-empty.md) | 213 | `result-track:283c535e5d777609b376c43def12b34da44c5263166f04c0322c118f22182f7d` |
| 21 | `theorem` | [closure_univ](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-univ.md) | 217 | `result-track:03907281b62d4899afd31e2d8c21e48d6ee14a0648037a8b735320ac75afbec2` |
| 22 | `theorem` | [closure_union](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-union.md) | 221 | `result-track:3791ea113c98a39d10639629cfbed73b80039cf8b9bfc0a06c3231c8b8d65006` |
| 23 | `theorem` | [closure_iUnion](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-iunion.md) | 225 | `result-track:7ab332d5cb9d951d46440bfe36734769dadc0331b3895c658ae832637e58731e` |
| 24 | `theorem` | [closure_singleton_le_iff_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/closure-singleton-le-iff-mem.md) | 229 | `result-track:c4c94aa484c29715235f75fd01238dc4fe428f89eb6d36fd69589fc2cf6ce358` |
| 25 | `theorem` | [mem_iSup](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/mem-isup.md) | 233 | `result-track:45cc0f33862640406382c59677b6c47c6b8f428b60e1bd1b8fb41ed412d1971d` |
| 26 | `theorem` | [iSup_eq_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/isup-eq-closure.md) | 239 | `result-track:774b0f230c0609fca3be9670a8f2e832be341da9029eb5dea88701b1c22b54d3` |
| 27 | `theorem` | [eqOn_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/eqon-closure.md) | 254 | `result-track:d9bbac1e339e0a8ebf5dcc79c048f3608957fe0e81c3113d7579e318630b7325` |
| 28 | `theorem` | [eq_of_eqOn_dense](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/eq-of-eqon-dense.md) | 259 | `result-track:16eee83c2497375a730394702a2c73f462bb575fa2570d297d6f6a682af43b6c` |
| 29 | `def` | [ofDense](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/ofdense.md) | 277 | `declaration-track:4330a0b5365a7d1948cc66769dfaa002be9b6a6e67c4c8bf0e48d324364be9aa` |
| 30 | `theorem` | [coe_ofDense](../../../../GroupTheoryAndGeneralizations/SubsemigroupBasicSourceEdition1.lean/declarations/coe-ofdense.md) | 291 | `result-track:fb2d381f4e5613c68b6ea24f66e35d41d5dfc01e366579f33d7c487341370fa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b71b09a7c2457c166302e5310548ad011fefb5fad1a209b9fa313faf3524251 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant643909116766ed6c9418c93714105d48a7f4c34d4b73c69ecd281d74a59ad735.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant643909116766ed6c9418c93714105d48a7f4c34d4b73c69ecd281d74a59ad735.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
