# Verification target: Ring Theory Principal Ideal Domain Principal Ideal Domain Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f053ec7c39d5d746a94d16b7a64bcc79b0bb82db",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f053ec7c39d5d746a94d16b7a64bcc79b0bb82db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Submodule.IsPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/submodule-isprincipal.md) | 52 | `declaration-track:265e226583e86cab970176d6b9f49b9e08fbb95808963c859bd5864287e1121b` |
| 2 | `theorem` | [Submodule.IsPrincipal.principal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/submodule-isprincipal-principal.md) | 56 | `result-track:e969452001289b3e3e148ec95b7974de0bc9c17f36f75adabad277600333b240` |
| 3 | `instance` | [bot_isPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/bot-isprincipal.md) | 61 | `declaration-track:d307d7c9712c8e3240406b770db18583f2d2f0409ac5af6b6b3807c10e8e7ba5` |
| 4 | `instance` | [top_isPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/top-isprincipal.md) | 65 | `declaration-track:71bf4a5769188613389cdd5464cd64e4c3bfc1b844835e76dbf0bcd3f5a33f36` |
| 5 | `class` | [IsPrincipalIdealRing](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/isprincipalidealring.md) | 73 | `declaration-track:3cc73c3f11c69769c3a119f93b8ce6c3d7e6a21d3f483ba7b8b6afcc4c755d72` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/instance.md) | 79 | `declaration-track:00856221573a870297b6634ca0d58449fef2828b0b6c7619c3b47315a7c46323` |
| 7 | `def` | [generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/generator.md) | 98 | `declaration-track:1b4afaefa86a900b1ebe874660780fd15716b96e7ccf47377c6aabf77e3cbd0a` |
| 8 | `theorem` | [span_singleton_generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/span-singleton-generator.md) | 102 | `result-track:e1d2eeaa2e35b8d2702a8a9715b807b859f32a190ecb93685c4c1284b6f033a9` |
| 9 | `theorem` | [_root_.Ideal.span_singleton_generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/root-ideal-span-singleton-generator.md) | 106 | `result-track:8e84fa8067bf0f3bd03b42ab24909799341f39e230ad64b6b566d62adf400826` |
| 10 | `theorem` | [generator_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/generator-mem.md) | 112 | `result-track:93a657c779331d2158d8d49f7374f6eda04687b4d369c95f6db7ecc65bf27fcb` |
| 11 | `theorem` | [mem_iff_eq_smul_generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/mem-iff-eq-smul-generator.md) | 117 | `result-track:69953bb803169246d1a6e3792d0391f5f21e0fd20a138a9c33a39b60664b9a1a` |
| 12 | `theorem` | [eq_bot_iff_generator_eq_zero](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/eq-bot-iff-generator-eq-zero.md) | 122 | `result-track:a237a7d25aa5b8578b3d2ffc100a48b92f33d00d1ff9d920902308aabe59b438` |
| 13 | `theorem` | [mem_iff_generator_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/mem-iff-generator-dvd.md) | 132 | `result-track:79c9585e3ec47e2a10dee67b8bd289776a10b612b73d9f732968ad97e31a1290` |
| 14 | `theorem` | [prime_generator_of_isPrime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/prime-generator-of-isprime.md) | 136 | `result-track:2533336f7d88e3d15e4a99597648d75688a9cb3fd53c9c7b0c36317dfff8e52f` |
| 15 | `theorem` | [generator_map_dvd_of_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/generator-map-dvd-of-mem.md) | 144 | `result-track:92cd3b3b86d43ba46c9b36ceff49cfbed1a573577853abd6b7a4a27b93572fba` |
| 16 | `theorem` | [generator_submoduleImage_dvd_of_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/generator-submoduleimage-dvd-of-mem.md) | 151 | `result-track:53eb829c51cf9ecc27f50728d543edbbca33b3ce2bc0e11e39853da80fdd2fb4` |
| 17 | `theorem` | [to_maximal_ideal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/to-maximal-ideal.md) | 170 | `result-track:ef65f0b36ce333078e8d4ec06e2a389a85e5803f66f9fd415d2b23efd59fae5f` |
| 18 | `theorem` | [mod_mem_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/mod-mem-iff.md) | 196 | `result-track:df651d6bf6347c2c72b4e6d317a97bb5b7f79e43501c3f83e913a2b70207d925` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/instance-source-edition-4.md) | 202 | `declaration-track:a2f3a40dfee6caf1e34489c7437986c9fe37cebb9f5cc5eb6a045d08bfe32054` |
| 20 | `theorem` | [IsField.isPrincipalIdealRing](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/isfield-isprincipalidealring.md) | 231 | `result-track:6d5dc29c4bbed1a427e8c27d7b58be5b300f5b5f9aa4d51ee35ab003eeb3d89e` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:0445daab22e0c63b521a839d86ba3b5c5c7a388387424fcd21e351c8484c688c` |
| 22 | `theorem` | [isMaximal_of_irreducible](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/ismaximal-of-irreducible.md) | 250 | `result-track:55179ba66b0a0e40367d7f1b0d7a7336cf1f8869f96010fdd57e970d5538b4c7` |
| 23 | `theorem` | [irreducible_iff_prime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/irreducible-iff-prime.md) | 262 | `result-track:e05990b1489a623339f476a03f4ab8ca480e2d61f9e3ecab15ffef58fe876462` |
| 24 | `theorem` | [associates_irreducible_iff_prime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/associates-irreducible-iff-prime.md) | 267 | `result-track:a9a367f1ff89b308839add7eadf67b9ea72db67da0f1983c5fee3c21445963b2` |
| 25 | `def` | [factors](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/factors.md) | 276 | `declaration-track:29fc31dbaf7f7b86fe8f58265d18a3bc6e167e6e55c3ba396aa18df1a1207010` |
| 26 | `theorem` | [factors_spec](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/factors-spec.md) | 280 | `result-track:ec1ad80bae4e54aa9aec1a567673219d31f5296a292bcc420dfcbd6900dbcabf` |
| 27 | `theorem` | [ne_zero_of_mem_factors](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/ne-zero-of-mem-factors.md) | 286 | `result-track:451b3f6b7f7b6b7372c569808b2e8731b4648e40bcfbac406a792e42cdcfd72a` |
| 28 | `theorem` | [mem_submonoid_of_factors_subset_of_units_subset](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/mem-submonoid-of-factors-subset-of-units-subset.md) | 291 | `result-track:86124cb8bf33b4e0a8af43c3586428fbd3c73cc2bb4623fb9a70703a55f75461` |
| 29 | `theorem` | [ringHom_mem_submonoid_of_factors_subset_of_units_subset](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/ringhom-mem-submonoid-of-factors-subset-of-units-subset.md) | 300 | `result-track:36a738b78b54ba219b234236a443f024b0ce1093d4e86333bbe1a9937d839f70` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/instance-source-edition-3.md) | 308 | `declaration-track:8e52ad99af026d175582d1a21fa936baa7a6b178b27f7a5623284149b037c057` |
| 31 | `theorem` | [Submodule.IsPrincipal.of_comap](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/submodule-isprincipal-of-comap.md) | 325 | `result-track:4a71dae900b36850e0bb548a0d860beef90c7b3868b949d423f530a9377f5b16` |
| 32 | `theorem` | [Ideal.IsPrincipal.of_comap](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/ideal-isprincipal-of-comap.md) | 332 | `result-track:f1e23e8c76015f2594703dff945f00deda7b3d4a55ca70acf2f67082b41277a9` |
| 33 | `theorem` | [IsPrincipalIdealRing.of_surjective](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/isprincipalidealring-of-surjective.md) | 340 | `result-track:c3e55e9426f0d4dd1873de299077cad14933deff0eaf3fb6d91ee3c27f66c31a` |
| 34 | `theorem` | [span_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/span-gcd.md) | 353 | `result-track:63bef153c14a7ab28a3d9d388303133edc7dd80863dd0ddb42a11a5b0429571e` |
| 35 | `theorem` | [gcd_dvd_iff_exists](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/gcd-dvd-iff-exists.md) | 374 | `result-track:5156c6f1aa64e8c8071186edf574ac03ca1e486519bb57c55603754cdb3fb201` |
| 36 | `theorem` | [exists_gcd_eq_mul_add_mul](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/exists-gcd-eq-mul-add-mul.md) | 380 | `result-track:7ca748a1b884e7ce41baf1b98593b017971a6aa487c46c6b8b861d011accbb8b` |
| 37 | `theorem` | [gcd_isUnit_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/gcd-isunit-iff.md) | 384 | `result-track:1cb9caadb719889fe1c7a78802d1356538999bcf1f726833adc81c59fbcbb71d` |
| 38 | `theorem` | [isCoprime_of_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/iscoprime-of-dvd.md) | 389 | `result-track:67ce3b986c03f31bc65df38636f0b85b6daca5fe4081932fbdebf0e09465d56c` |
| 39 | `theorem` | [dvd_or_coprime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/dvd-or-coprime.md) | 398 | `result-track:b65f56abca7b9417da9c2af4dc962caac0b71266b7409937104d934a2d16f9e2` |
| 40 | `theorem` | [isCoprime_of_irreducible_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/iscoprime-of-irreducible-dvd.md) | 408 | `result-track:1d8d767704177fa631ab6c46979d46f69a9c2902cfec8ea03a464f2540fc1afc` |
| 41 | `theorem` | [isCoprime_of_prime_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/iscoprime-of-prime-dvd.md) | 418 | `result-track:0f8c96e01f8ceeaa77396033f13487dcb0d189766564b6476cfdf5288da16d3a` |
| 42 | `theorem` | [Irreducible.coprime_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/irreducible-coprime-iff-not-dvd.md) | 423 | `result-track:4d300819edc66536b94e0093ebf2ae1e0db9c9e62e64c09bbd5c49fa6b205aa4` |
| 43 | `theorem` | [Prime.coprime_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/prime-coprime-iff-not-dvd.md) | 440 | `result-track:918601066cf056df6fc4e18cf63eedf6f287aeeb295830223f3fd685569b8211` |
| 44 | `theorem` | [Irreducible.dvd_iff_not_coprime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/irreducible-dvd-iff-not-coprime.md) | 444 | `result-track:2525dd5792df134568f9ccb2cac61b3586cccc5133ccc19c902c79a68216fac8` |
| 45 | `theorem` | [Irreducible.coprime_pow_of_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/irreducible-coprime-pow-of-not-dvd.md) | 448 | `result-track:856b9ddaec93792640734356f006c3c7efe0fc705d480c276436377c8af3e093` |
| 46 | `theorem` | [Irreducible.coprime_or_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/irreducible-coprime-or-dvd.md) | 453 | `result-track:1577f48d596a40794184a2ffc9bdf84b9780d281f17d32f532a2b59e38cc0b74` |
| 47 | `theorem` | [exists_associated_pow_of_mul_eq_pow'](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/exists-associated-pow-of-mul-eq-pow.md) | 457 | `result-track:7a9e096de00e83ebd61e6994a1414b3f3e448f43809e83eebf43e3e6e43bcb3f` |
| 48 | `def` | [nonPrincipals](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/nonprincipals.md) | 471 | `declaration-track:aa387f8ea930d8cfad7aa1570dade81def53f1301cc4c713aed11a231bb31465` |
| 49 | `theorem` | [nonPrincipals_def](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/nonprincipals-def.md) | 475 | `result-track:e0536b07d20f088b2046a5e002b2f0cf477aa3d2425f826d254dd6b082096c38` |
| 50 | `theorem` | [nonPrincipals_eq_empty_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/nonprincipals-eq-empty-iff.md) | 481 | `result-track:1b55a121f902bef1bfd4ae79b2f6b6e6e4616741df98e0cedac05be31c1ce9be` |
| 51 | `theorem` | [nonPrincipals_zorn](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/nonprincipals-zorn.md) | 488 | `result-track:c8285a31144c261327d235563d5a0a55f2c10d1efa6876eebb9d4a6455fb81de` |
| 52 | `theorem` | [IsPrincipalIdealRing.of_prime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainSourceEdition1.lean/declarations/isprincipalidealring-of-prime.md) | 502 | `result-track:16b566eb81e270ce1df096d1b4363544e2f1eb315d2179be62bf704088c8037c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e996f0188e8a3ec3f915ba95cf702bc1eade3c5d7d45ae8aa435f53bc271e686 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
