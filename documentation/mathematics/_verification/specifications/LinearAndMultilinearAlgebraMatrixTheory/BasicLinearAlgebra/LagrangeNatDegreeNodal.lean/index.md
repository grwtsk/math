# Verification target: Lagrange Nat Degree Nodal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34841ffa10a823312c194bc2ca77400de3ccabfc",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34841ffa10a823312c194bc2ca77400de3ccabfc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_degree_lt_of_eval_finset_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-zero-of-degree-lt-of-eval-finset-eq-zero.md) | 44 | `result-track:8b0f6a8f00a312b6cff3941ef3acbfb192fb1fc14e6e6ae39fb3981f911b3bb0` |
| 2 | `theorem` | [eq_of_degree_sub_lt_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degree-sub-lt-of-eval-finset-eq.md) | 54 | `result-track:1a8e0dda961736498ec9ba1f528401dd7786bccb0a0d5340d4ab09751a9410f3` |
| 3 | `theorem` | [eq_of_degrees_lt_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degrees-lt-of-eval-finset-eq.md) | 61 | `result-track:9c89958098663350bdf0f4e104fc287610cca93c13ae53563101d6f94a360b3a` |
| 4 | `theorem` | [eq_of_degree_le_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degree-le-of-eval-finset-eq.md) | 71 | `result-track:03c9e3adcf6190d6d5feaafeeb3babde115d390b3e129964a643e27ee7356229` |
| 5 | `theorem` | [eq_zero_of_degree_lt_of_eval_index_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-zero-of-degree-lt-of-eval-index-eq-zero.md) | 90 | `result-track:03f61d5037781d2ade059dbec377b1deff1d7134195800af21a646250ab0912b` |
| 6 | `theorem` | [eq_of_degree_sub_lt_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degree-sub-lt-of-eval-index-eq.md) | 99 | `result-track:dfcbd9066fbdc8617abd67d85dba21a35cb7a289d9e81d7e0c9df4610afc4e27` |
| 7 | `theorem` | [eq_of_degrees_lt_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degrees-lt-of-eval-index-eq.md) | 107 | `result-track:4bec836b4d6cf634144d1b01e1b8fc65a39ad3b372fa902f501836ac9224baed` |
| 8 | `theorem` | [eq_of_degree_le_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-of-degree-le-of-eval-index-eq.md) | 113 | `result-track:a8dd7631a978e5c942db5fc1dad7352667d432eb40e8de0838f3227dcc000ba5` |
| 9 | `def` | [basisDivisor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor.md) | 143 | `declaration-track:a515f10320e840cbb0969c83225bda582fc87884f9452b546658bd87a3c2dd84` |
| 10 | `theorem` | [basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor-self.md) | 146 | `result-track:cb1c49e1ca6e9678777e620b640337c73dfa908e6824017c7336cba3a77436ef` |
| 11 | `theorem` | [basisDivisor_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor-inj.md) | 149 | `result-track:75450f36030e987ac46c1d074683dd6aa3aef496265af45f3fb714b29dcb1485` |
| 12 | `theorem` | [basisDivisor_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor-eq-zero-iff.md) | 155 | `result-track:9787675b7d7c5a33b7718c16fd4460f6e50561b988985c3a7d629059e01e0ab2` |
| 13 | `theorem` | [basisDivisor_ne_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor-ne-zero-iff.md) | 158 | `result-track:fc96dd84ac9d6800e53a5b8d3eda53471de41537c4fdc043125a4ea4c854e77e` |
| 14 | `theorem` | [degree_basisDivisor_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-basisdivisor-of-ne.md) | 161 | `result-track:8d0febabee44b374f7a11768ad9f01beef38055404ae4683f23e9f57c79b0ee3` |
| 15 | `theorem` | [degree_basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-basisdivisor-self.md) | 166 | `result-track:bb166a285d19dfa307d40c69805e0433a965ea937359b2554ee11946667e2d6b` |
| 16 | `theorem` | [natDegree_basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/natdegree-basisdivisor-self.md) | 169 | `result-track:a3c0a4433464d207bc9c52be51608aba2a0a49a119c9db1bb171538847c1ab99` |
| 17 | `theorem` | [natDegree_basisDivisor_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/natdegree-basisdivisor-of-ne.md) | 172 | `result-track:bf09ea3b02f530d2f5ad6dd10f26d00d786ce508aad1663f9cd3c156854b6ff6` |
| 18 | `theorem` | [eval_basisDivisor_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-basisdivisor-right.md) | 176 | `result-track:4ffba91ab9882c12cd8c968a4e3296a7806ebc21c9b4f355d78573d11379b090` |
| 19 | `theorem` | [eval_basisDivisor_left_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-basisdivisor-left-of-ne.md) | 179 | `result-track:b914bb7d7b10745cd6ce7f0f6b91439b3592e5a9524de0d75ba8b64ea2e2793c` |
| 20 | `def` | [basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis.md) | 195 | `declaration-track:d6ea11231bdc031779deebaaba91c999134fb029f2d97dc99fc5d6cdea73ad33` |
| 21 | `theorem` | [basis_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-empty.md) | 199 | `result-track:8f468e9bdb54f79e315ad3495ccfe3ba1bd224f9143d61a1066c0c4d5d71efb8` |
| 22 | `theorem` | [basis_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-singleton.md) | 203 | `result-track:4cc6621f965155cbaca974b608e2da95592f91e5f37499db4a4ee5bf70a241f2` |
| 23 | `theorem` | [basis_pair_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-pair-left.md) | 207 | `result-track:9e43766792da48634cfd719d7460d2d0c17eb5c3666dcbdcf8541ea1c067a788` |
| 24 | `theorem` | [basis_pair_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-pair-right.md) | 212 | `result-track:259f673e1c78d5dbb8323a18ca5c97428b02c53aadfb5d61479925532289297b` |
| 25 | `theorem` | [basis_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-ne-zero.md) | 216 | `result-track:319ad078b29607d8627ab5bbeb7f0c253b08beb773023face86be8a63d466edc` |
| 26 | `theorem` | [eval_basis_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-basis-self.md) | 223 | `result-track:7755b40843db7e618def1fc6fe59708282d692e33e7092c489addadc69da8901` |
| 27 | `theorem` | [eval_basis_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-basis-of-ne.md) | 232 | `result-track:08c0296103dcc4f88185ba35aeea6de6e8b0e5c7c86ea6a3be0ba5c642dc0aaf` |
| 28 | `theorem` | [natDegree_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/natdegree-basis.md) | 237 | `result-track:8ce446b1ccf3867627c9bf02ce4b6e9826d0ef611ca04864bdc403bf8befcefe` |
| 29 | `theorem` | [degree_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-basis.md) | 248 | `result-track:8b0900aaf19d395f4752fc0667b1805f336494a609a5135b31dbfd74beb6f257` |
| 30 | `theorem` | [sum_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/sum-basis.md) | 252 | `result-track:531a717128092b9e9df5de8ff3b4015f1be33f1840e37d096537d5a7e1e65970` |
| 31 | `theorem` | [basisDivisor_add_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basisdivisor-add-symm.md) | 268 | `result-track:852dfaece9619b455da5d1cb23b7824b82923ae8d245bf7e59e79731a19810c9` |
| 32 | `def` | [interpolate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate.md) | 288 | `declaration-track:2d747bd0ea7fc532bb1f4b756868879c6b1f01efad350e791dd2e02c4ae7094a` |
| 33 | `theorem` | [interpolate_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-empty.md) | 299 | `result-track:1b0b735c2a5a7bef47fcce483f40e5ae4d6f0bab2ff2d287bd0e6344af8ad24e` |
| 34 | `theorem` | [interpolate_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-singleton.md) | 301 | `result-track:52d670275136d38ff97a1c8d7cff4f5f62efa68fde08eb5232f42f3e5f4348ce` |
| 35 | `theorem` | [interpolate_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-one.md) | 304 | `result-track:265470ccec23e081d32b2b7db43543dae14d6b69fc766e2d3b8bc938db92ad7f` |
| 36 | `theorem` | [eval_interpolate_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-interpolate-at-node.md) | 308 | `result-track:41b0e414d0f1accd162573ad08aadf3311bb9fc139295feda1b6f2e022515b4e` |
| 37 | `theorem` | [degree_interpolate_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-interpolate-le.md) | 315 | `result-track:e5dd0ba479d55e28f6c372b3adab028a583ee672e9e451ccb50939663b87797d` |
| 38 | `theorem` | [degree_interpolate_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-interpolate-lt.md) | 325 | `result-track:e30faf948245c8d64e7cc7c07ef1f2aa4c05ca5c8449cd1a14a310ac269042a7` |
| 39 | `theorem` | [degree_interpolate_erase_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-interpolate-erase-lt.md) | 334 | `result-track:ec5f45dab9d99b23c4662e863805f8c117c8187c04a3611de4efd6ac76562820` |
| 40 | `theorem` | [values_eq_on_of_interpolate_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/values-eq-on-of-interpolate-eq.md) | 339 | `result-track:51ff4d483ff600efc381ad6d5a36e0aa52918da32f46b3e3d3cee5705e8114ad` |
| 41 | `theorem` | [interpolate_eq_of_values_eq_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-eq-of-values-eq-on.md) | 343 | `result-track:0a0446cc7a1e57ab0b0915a6b54e92b7f76ddf8d89a481a90b07c397dfd02256` |
| 42 | `theorem` | [interpolate_eq_iff_values_eq_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-eq-iff-values-eq-on.md) | 347 | `result-track:49183444e3ff9c7f6be3cec22c30e0840bc6ae5d286eca408f2f910fe0bfbb7e` |
| 43 | `theorem` | [eq_interpolate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-interpolate.md) | 351 | `result-track:35e067eb1c5c0886fca117646a455c1706f1a125cb62ec789016d7b2688d4a2e` |
| 44 | `theorem` | [eq_interpolate_of_eval_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-interpolate-of-eval-eq.md) | 356 | `result-track:7e3a9ffa0048c92f806f28567454879959395cb6d05dda031be59ba3b11d0022` |
| 45 | `theorem` | [eq_interpolate_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eq-interpolate-iff.md) | 364 | `result-track:81d2a2be2c9e8aa4c7f452a6224abda3da3a9bcf8ccb7c13aebe4eeaa8159c58` |
| 46 | `def` | [funEquivDegreeLT](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/funequivdegreelt.md) | 373 | `declaration-track:2bf4b5ca1c71bef00d6e42d33f5da2abc8b4899a251b1ec3a9cb64b050064879` |
| 47 | `theorem` | [interpolate_eq_sum_interpolate_insert_sdiff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-eq-sum-interpolate-insert-sdiff.md) | 392 | `result-track:aaa7592ce2f6f9487d0591cbfc4f46d521a8b9873411f8d9a25326d508d8ce9a` |
| 48 | `theorem` | [interpolate_eq_add_interpolate_erase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-eq-add-interpolate-erase.md) | 428 | `result-track:f6f22a949e0e8c67188a32e41fa5653bf97d531c7401eb90c59743d444619505` |
| 49 | `def` | [nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal.md) | 458 | `declaration-track:606f84ec3b17956c96198fe1d39439fed57de2f0d75a376cae74dd3650a41217` |
| 50 | `theorem` | [nodal_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-eq.md) | 461 | `result-track:1d68acb16501e4e4d34f0ef8fad9ee423b3920e383f71fca80b63e09a3713432` |
| 51 | `theorem` | [nodal_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-empty.md) | 465 | `result-track:25544342efe99e99459d974096707bad41ac906a4c4839532c9b554fa25f0b89` |
| 52 | `theorem` | [natDegree_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/natdegree-nodal.md) | 469 | `result-track:df1a914755edd90c86e9f40a831dd987c748a6c17c42ac0681fc18718c241aba` |
| 53 | `theorem` | [nodal_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-ne-zero.md) | 473 | `result-track:601dfe4f858bb5c307247d04b3d583e2f05f94aff99b4d4846188313e8354941` |
| 54 | `theorem` | [degree_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/degree-nodal.md) | 480 | `result-track:8a097163b240705b888d17dd90eeffeb9aa0c99e3ecb8115dddc7a274b0ba2a0` |
| 55 | `theorem` | [nodal_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-monic.md) | 483 | `result-track:1a24b60d447c0cf83e6545d521171e964d6a42b348fac7a86011d19668093caa` |
| 56 | `theorem` | [eval_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-nodal.md) | 486 | `result-track:b9e095e71108a6ec2199e3fc4b9caba47b63d20fc31eb9ffeb550b2ffca0efb5` |
| 57 | `theorem` | [eval_nodal_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-nodal-at-node.md) | 489 | `result-track:b413c51dc4216bc04de3e1f256bfbd96e709e201d8649bedbbca6eea8717d422` |
| 58 | `theorem` | [eval_nodal_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-nodal-not-at-node.md) | 493 | `result-track:d3a0c269b7cce55244d4378059384213ec476b24575f561f61c57fd0334c57ab` |
| 59 | `theorem` | [nodal_eq_mul_nodal_erase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-eq-mul-nodal-erase.md) | 498 | `result-track:83391dc32962dd893e6a535259a5424be3ea98c91b0bdae3065cf2801ab81850` |
| 60 | `theorem` | [X_sub_C_dvd_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/x-sub-c-dvd-nodal.md) | 502 | `result-track:c2ad163092f3bf4810ab453bfa1100353acbac4a97aedcf9134cbfa0cb6b8801` |
| 61 | `theorem` | [nodal_insert_eq_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-insert-eq-nodal.md) | 506 | `result-track:a5941c3c782fb5c8f75a89df2df1c29a23ea915212024888f8386f3818bb35bd` |
| 62 | `theorem` | [derivative_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/derivative-nodal.md) | 510 | `result-track:457c63e3eaba6528d591cbb1d8a77a1c3b47425b34eed07f93a97455104e00ca` |
| 63 | `theorem` | [eval_nodal_derivative_eval_node_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-nodal-derivative-eval-node-eq.md) | 520 | `result-track:fd0c5ee095b049f7019bb0154a72ed2d0aab02db437db49d5b6f802975e787d9` |
| 64 | `theorem` | [nodal_subgroup_eq_X_pow_card_sub_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-subgroup-eq-x-pow-card-sub-one.md) | 526 | `result-track:db545f614036d5252bd9381e22452623fa04daffbc6b9c285ebc7e4e6712a675` |
| 65 | `def` | [nodalWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodalweight.md) | 553 | `declaration-track:8a757bea905dcf673fb25b85ccd6e33c96cc37417222eef5fe24d0a96bc4425d` |
| 66 | `theorem` | [nodalWeight_eq_eval_nodal_erase_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodalweight-eq-eval-nodal-erase-inv.md) | 556 | `result-track:4ebdb5abf950a0725340d0f10202f43e16886fc27048e98ac3a8103bbac2ee87` |
| 67 | `theorem` | [nodal_erase_eq_nodal_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodal-erase-eq-nodal-div.md) | 560 | `result-track:fa3968a418777214965b67b11ecbcda1709be63e88aa2756100f410547b82127` |
| 68 | `theorem` | [nodalWeight_eq_eval_nodal_derative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodalweight-eq-eval-nodal-derative.md) | 565 | `result-track:22dff2210f6278fe4a6af8ea17e93e742360a58ff665c75182121dbe3966d476` |
| 69 | `theorem` | [nodalWeight_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/nodalweight-ne-zero.md) | 569 | `result-track:77658e3fb6931efa17b3c7f18d422ec4811f44915bb76c1b1beb1a3ba690b0c6` |
| 70 | `theorem` | [basis_eq_prod_sub_inv_mul_nodal_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/basis-eq-prod-sub-inv-mul-nodal-div.md) | 584 | `result-track:800ef00938c284343240b2d26a1d17d0826bdac00452894b0e8af195c7e409f9` |
| 71 | `theorem` | [eval_basis_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-basis-not-at-node.md) | 589 | `result-track:73d5abc7a559ecc50717d3b8e7d5586a23b1437752b2cdc34be1ea149c261e86` |
| 72 | `theorem` | [interpolate_eq_nodalWeight_mul_nodal_div_X_sub_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/interpolate-eq-nodalweight-mul-nodal-div-x-sub-c.md) | 595 | `result-track:8ed4c6776c1e37af70707e397ac1690dc83dc6361207b6f86541b3ef5e8a0add` |
| 73 | `theorem` | [eval_interpolate_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-interpolate-not-at-node.md) | 600 | `result-track:f02b3876674fa5ff2f85e5212c213087d79f3a49d4f6c2edd47f16baa1247cde` |
| 74 | `theorem` | [sum_nodalWeight_mul_inv_sub_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/sum-nodalweight-mul-inv-sub-ne-zero.md) | 607 | `result-track:8cc535ed88d7647a5279f2a81bc49a4c52e7277b061d6d18bb0b087be8e3ec48` |
| 75 | `theorem` | [eval_interpolate_not_at_node'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNatDegreeNodal.lean/declarations/eval-interpolate-not-at-node-source-edition-2.md) | 614 | `result-track:f57a942a87eecbc71b08579822566deb1132b3b7ccaa6c1cdd6aebd1c2dfb235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76b5b8a48e64f6b93533f6baaf7a0c0c56d4fc34a9a4a49f121c2a7088113631 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lagrange/Variant146f4415d8c894cb7cdaf96b72fe0b28d36a370e9d8d810b1abe7f858e8b671b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
