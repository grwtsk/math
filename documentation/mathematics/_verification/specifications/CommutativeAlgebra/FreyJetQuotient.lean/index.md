# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbce9ce602ea0758c8456aef5ed8f1791cf0ced5",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreyJetQuotient.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreyJetQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbce9ce602ea0758c8456aef5ed8f1791cf0ced5`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood`](../../../../CommutativeAlgebra/FreyFormalNeighborhood.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Plane](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/plane.md) | 21 | `declaration-track:1cd5233e399d4a0fbc9aba08d4ca62ef3dcf5d2c82b16102678f3c395546a01c` |
| 2 | `def` | [equation](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/equation.md) | 24 | `declaration-track:902d7f2a5e81bb06bb1c9c926304dc03c3132b5e1ef3e28f15299b7dfcc29214` |
| 3 | `def` | [sectionIdeal](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/sectionideal.md) | 29 | `declaration-track:40ddf2d8b2a59e12569802aedbe78e1c20889980d7820162dd5b7cef77d5c8da` |
| 4 | `def` | [relations](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/relations.md) | 33 | `declaration-track:f7c3c51efbaeaf8ff73b8ec1e6a3b6bcdf45586fc92b8a6deeb5592d07cda3b7` |
| 5 | `abbrev` | [Jet](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/jet.md) | 36 | `declaration-track:f101dbf85f96d43609d91e9282e959b7f146655393f974d9287ed55ecc023120` |
| 6 | `abbrev` | [Parameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parameter.md) | 37 | `declaration-track:448f76555540840a5d07fcd198029e1771dad7256e1fb2aabc811828244365a2` |
| 7 | `def` | [quotientMap](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/quotientmap.md) | 41 | `declaration-track:8249ca08c65c4f5eaa90e66de33c70e8c6a7a7705971a23d3eb1d25b6ee5c01f` |
| 8 | `def` | [scalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/scalar.md) | 44 | `declaration-track:0fc4d2a7fc850de696856384ab1742223d9307890b72ff3e824263f88d0e43be` |
| 9 | `def` | [x](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/x.md) | 47 | `declaration-track:56a7946b5f776cf11bc4a5340f4bc59ceb7d722b9163933f6095016af46b2efe` |
| 10 | `def` | [y](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/y.md) | 50 | `declaration-track:3852359baefc623858bffc697e4f6d742bf0db9335db414ea1832256fb17f7bb` |
| 11 | `def` | [displacement](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/displacement.md) | 53 | `declaration-track:c00c5aec926cc8ddc8a9d9da35e40f82fd59f05040edbdee3a37511448fd3ef0` |
| 12 | `def` | [neighborhoodIdeal](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/neighborhoodideal.md) | 57 | `declaration-track:14fc7470ee24a919591a4f86ea5ab3423314d649eb81de235aab6e60ca178862` |
| 13 | `def` | [parameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parameter-source-edition-2.md) | 60 | `declaration-track:8589447c892b450805ce4cddacf50bb4ba820041d91323ea94f8193844987021` |
| 14 | `def` | [parameterScalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parameterscalar.md) | 63 | `declaration-track:91cf57e2cf4de548223e204e5500e75b0f9288a12727cb119c83b69b973ba168` |
| 15 | `def` | [derivative](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/derivative.md) | 66 | `declaration-track:302235597f68c33bca52b4cb9b8810e07719927e802d47406d6407942f615fd5` |
| 16 | `def` | [quadratic](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/quadratic.md) | 67 | `declaration-track:98bdd3474031b9a0d91b3d91d73575799c0d1dba1a95b664a3f9f014054e5f60` |
| 17 | `lemma` | [cubic_shift](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/cubic-shift.md) | 69 | `result-track:03bb2fb1549bc3720443089517fb3e84d09b8ebf892b325e321515209cce63fb` |
| 18 | `theorem` | [parameter_pow](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parameter-pow.md) | 79 | `result-track:88ef3cb6a048626cb24e3b396a5be1e90b4e83d5c8e4f71cb3de4b0e4055696a` |
| 19 | `theorem` | [displacement_eq](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/displacement-eq.md) | 83 | `result-track:db2b82bf622b265b75706252637b246834aaaf97656bde96e43ccbdf042bbaea` |
| 20 | `theorem` | [neighborhoodIdeal_pow](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/neighborhoodideal-pow.md) | 88 | `result-track:6f8ee05fc8f154582b7ac2c53b90a4b353b1f4dc676f2ea982d48902e79e017e` |
| 21 | `theorem` | [displacement_mem](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/displacement-mem.md) | 94 | `result-track:66608733d39d18626ee68e73f64a3c264e141a8e43462fb379052647e04305c2` |
| 22 | `theorem` | [y_mem](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/y-mem.md) | 98 | `result-track:3f44834d7cc9442a26e3448456ab63e98b9f82d5f0bf3d67bbe3016aec622461` |
| 23 | `theorem` | [y_pow](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/y-pow.md) | 101 | `result-track:c004b3d0190ea40579af88c5f871442aa649b8dd71ea944dad27d104c8226c00` |
| 24 | `theorem` | [quotient_cubic](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/quotient-cubic.md) | 105 | `result-track:fe33e60da48ca29b37d0a92bb59f8e87df8ce3fc8748b1b5bff14d54fb813b08` |
| 25 | `theorem` | [displacement_eq_iterate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/displacement-eq-iterate.md) | 116 | `result-track:f399c89d8a653118e3889a4937141f0ed08124ccdacf549b36d6745e0cb9129b` |
| 26 | `def` | [evaluate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/evaluate.md) | 145 | `declaration-track:dd89bf966da891a50e76bf9fd8dc139bef654ec1aada10ca25149b054f290273` |
| 27 | `theorem` | [relations_le_kernel](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/relations-le-kernel.md) | 153 | `result-track:d92d19f96475c989ca5564a8aa4838097493f286798960331bda470fe4a054a8` |
| 28 | `def` | [toParameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/toparameter.md) | 198 | `declaration-track:29eab397c1ddb9c453df57d7c9a0bf80e97f496c0ba90eb0b0cae9961563b9d1` |
| 29 | `def` | [fromParameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/fromparameter.md) | 204 | `declaration-track:7b5f9c565d87908db2ce1508f1f00cfe300d09c40c0667d357e7ee2b81d962ca` |
| 30 | `theorem` | [toParameter_scalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/toparameter-scalar.md) | 208 | `result-track:bc5386976d8588183fb3a4ff43236f4499778e59021fa1ca59f1caf9131277e4` |
| 31 | `theorem` | [toParameter_x](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/toparameter-x.md) | 213 | `result-track:0c39c98115f11fca0d7191172cdfea5fde06299d28793ee45403915eb52c69d1` |
| 32 | `theorem` | [toParameter_y](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/toparameter-y.md) | 220 | `result-track:ef5e4c274ae6a1310aa4a6bd54cd2b5578df6a892d187d5709fee1e0ee983150` |
| 33 | `theorem` | [fromParameter_scalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/fromparameter-scalar.md) | 225 | `result-track:c9b1ab254a37f4f8f11cea44d5119820cc77419b102c9378d1ff7873897a5ad2` |
| 34 | `theorem` | [fromParameter_parameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/fromparameter-parameter.md) | 229 | `result-track:bdab4329dba4a0f12632383e1ea39ec0ea64f367aee083d3d73a2b2ac0c651e1` |
| 35 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/hom-ext.md) | 234 | `result-track:6e73552e807c448d92ae84e5ca12b05a02a60c734273ed9ad31426de2fb42999` |
| 36 | `theorem` | [from_to](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/from-to.md) | 248 | `result-track:035c5ea1348bc56d1b894c4515a4060dd1369688daebd52779c2de4ba18c0faa` |
| 37 | `theorem` | [to_from](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/to-from.md) | 262 | `result-track:5d3b16ce53d14b28f737673fa696407d9b1b5fd34fecec46cc0c6699491fe320` |
| 38 | `def` | [ringEquiv](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/ringequiv.md) | 276 | `declaration-track:95031e1c95d7b76af8b2d30b264836c26a9bc7b0acc3b53e476841a4ae0a194a` |
| 39 | `theorem` | [kernel_evaluate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/kernel-evaluate.md) | 288 | `result-track:9675ab0a771afbdeb6728d899b8be386c77d221f97b77f141ca5345135ff2553` |
| 40 | `def` | [algebraEquiv](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/algebraequiv.md) | 301 | `declaration-track:20b8037eeb14ab383bc6445cc3d082b14af4d74aece97349781487a8950b443e` |
| 41 | `theorem` | [relations_antitone](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/relations-antitone.md) | 310 | `result-track:5f37e6c40ef599b390daf89b2972e4b3e61188655ce91826c7d024f8966e2020` |
| 42 | `def` | [truncate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate.md) | 315 | `declaration-track:073bdfbd01f410c5b9312a943bbb3c485c68e24f9347f853ecf08f1eaa839946` |
| 43 | `theorem` | [truncate_scalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate-scalar.md) | 319 | `result-track:a9c45966da11c2759b3ad1ca18047e38216e1fbcbd8f7e6c94b80045beeebd8f` |
| 44 | `theorem` | [truncate_x](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate-x.md) | 321 | `result-track:3928c1e4615c9411f85a49ebc00f1b722a145bbb6bd1f2f90c4892563e0759dd` |
| 45 | `theorem` | [truncate_y](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate-y.md) | 323 | `result-track:ca55b3e67a31caad58a4e4f1dbe4c81da8f445a96956aa988c75c206f7bd9e48` |
| 46 | `def` | [parameterTruncate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parametertruncate.md) | 326 | `declaration-track:e0791e0b54cd664a0fa9f38e0fe9447bb2eadd083512046df218bf50d3c9c64f` |
| 47 | `theorem` | [parameterTruncate_scalar](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parametertruncate-scalar.md) | 336 | `result-track:0df47044f16e08373646b9fbb344401cf65a635a396ba655b5cc49c252968b4f` |
| 48 | `theorem` | [parameterTruncate_parameter](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/parametertruncate-parameter.md) | 339 | `result-track:2a431f41364e7d6c407744c1012b1cf1b76471f6b447ad1971420f4097b919d9` |
| 49 | `theorem` | [fromParameter_truncate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/fromparameter-truncate.md) | 344 | `result-track:001ed410ae5f30a5ff0c612e3bb6e9f4df220b3854eb24bf01ac3d324acd0bcc` |
| 50 | `theorem` | [toParameter_truncate](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/toparameter-truncate.md) | 358 | `result-track:a5e2082a51fccabbf9b6e989fa9f3c7e4836569d31e3550d451ae729ddf72f19` |
| 51 | `theorem` | [truncate_id](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate-id.md) | 377 | `result-track:ab2abd4dac4727bfb70eb9c6656cf71b633dfe913dec3bb57e9b26959f47355f` |
| 52 | `theorem` | [truncate_comp](../../../../CommutativeAlgebra/FreyJetQuotient.lean/declarations/truncate-comp.md) | 381 | `result-track:b4921dffd032a65097593d33d19bf5cf4b4b45263a541615bc95201f5229cee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b90e6e00d5552d97e17a5b343dfb4f4ed2e9b75f99e1e015d9d0898e3e7f1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
