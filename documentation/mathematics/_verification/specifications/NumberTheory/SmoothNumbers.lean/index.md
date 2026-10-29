# Verification target: Smooth Numbers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55b572da9af134d348000f30ae398a6dbcdcfd26",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SmoothNumbers.lean/index.md) · [Full source](../../../../NumberTheory/SmoothNumbers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55b572da9af134d348000f30ae398a6dbcdcfd26`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/primesbelow.md) | 37 | `declaration-track:a19806597fa51f34b4e1f02d69f5995513c945b2add038ae1ca49d481da3ac8d` |
| 2 | `lemma` | [primesBelow_zero](../../../../NumberTheory/SmoothNumbers.lean/declarations/primesbelow-zero.md) | 40 | `result-track:cc8d3eed03e3daf11494cbd1bdf16d2a233756ae7f5aaec79e94ed2c184efe63` |
| 3 | `lemma` | [mem_primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-primesbelow.md) | 43 | `result-track:e6e96f7636fca6ab5848a7f32d2b6f0791b348ef0360c3ea693d38b1f6f39647` |
| 4 | `lemma` | [prime_of_mem_primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/prime-of-mem-primesbelow.md) | 46 | `result-track:595944611bde4af981e20810d5a83d4cdeda257fc5293ac86a73a740dc383460` |
| 5 | `lemma` | [lt_of_mem_primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/lt-of-mem-primesbelow.md) | 49 | `result-track:0036a10731a24508652ab504c42e84278026186de107092aace0439e3f81300c` |
| 6 | `lemma` | [primesBelow_succ](../../../../NumberTheory/SmoothNumbers.lean/declarations/primesbelow-succ.md) | 52 | `result-track:457dba9c16965f9260454575af183fedec7a0cb49b32905e66adee02a4a85d8f` |
| 7 | `lemma` | [notMem_primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/notmem-primesbelow.md) | 56 | `result-track:59a4998797ed372503ce84d193e8948ab3064442834efd4d33805c90e4712f1c` |
| 8 | `def` | [factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers.md) | 68 | `declaration-track:e3f63e565cf3dba0d58c0745d199a7d369f18453c32332f7816e74facc366735` |
| 9 | `lemma` | [mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers.md) | 70 | `result-track:1ff856327604447f7951898e79820869f96ce65797678cb7e50bd2888dd33d21` |
| 10 | `instance` | [(anonymous)](../../../../NumberTheory/SmoothNumbers.lean/declarations/instance.md) | 75 | `declaration-track:69a63be2c958f0a2125bed6762f87046a539c23e055cffa586fb6290bb8a9645` |
| 11 | `lemma` | [mem_factoredNumbers_of_dvd](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers-of-dvd.md) | 79 | `result-track:e9cf9f341383cb437620f0795a9454b31a6cef6ecea212cee804796c6afac956` |
| 12 | `lemma` | [mem_factoredNumbers_iff_forall_le](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers-iff-forall-le.md) | 90 | `result-track:d96636ab5da7f24f9f57e6abe2193b9e082db798e622be58e3d96eac7e9881ac` |
| 13 | `lemma` | [mem_factoredNumbers'](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers-source-edition-2.md) | 98 | `result-track:5c52cefc9c6bcfbcd5a58df011baeeb7ada1d72e1c7f601fcbdfa0d6719acf92` |
| 14 | `lemma` | [ne_zero_of_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/ne-zero-of-mem-factorednumbers.md) | 109 | `result-track:ea9bcb2c39672ad562ebbcce1beb097bb1ddfae2474e5dd2fea7347b0081801e` |
| 15 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/primefactors-subset-of-mem-factorednumbers.md) | 113 | `result-track:29a1cd6e0a5ce5cc07843659dba485b2dd7c6adfd01291e1817b4c81c80010cc` |
| 16 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers-of-primefactors-subset.md) | 121 | `result-track:d7e92ca4150c50737fc8d9e469cad46ecc6035fcd11453bbe8d66fb36690dba0` |
| 17 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-factorednumbers-iff-primefactors-subset.md) | 129 | `result-track:520ef462330c6751648d7f39743bd4d03764b2a587b8b9237de9580a2f9442a9` |
| 18 | `lemma` | [factoredNumbers_empty](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers-empty.md) | 135 | `result-track:572a80903773170a52956528fe5cd046ccf2501ad7432436b07f755f885948b7` |
| 19 | `lemma` | [mul_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/mul-mem-factorednumbers.md) | 142 | `result-track:06089e488d2e250b2269aadfc89b21d761d5e7522c515dc0ce58ec643a4684b0` |
| 20 | `lemma` | [prod_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/prod-mem-factorednumbers.md) | 151 | `result-track:4d870a3ee8c3d3b76f65bd729a23b3cbe06ba05010fc51eb5b07129a1c3b16d6` |
| 21 | `lemma` | [factoredNumbers_insert](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers-insert.md) | 162 | `result-track:7c33d9dfea0d68f49d408ad44ed310c91b1f5f0c2258d400953766c882c59ceb` |
| 22 | `lemma` | [factoredNumbers_mono](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers-mono.md) | 170 | `result-track:54a309a8ff5dbf58b7b2aaa4c4b526855d3e0c7866d2a09bf57908aacd651abb` |
| 23 | `lemma` | [factoredNumbers_compl](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers-compl.md) | 175 | `result-track:51abf9fe8c73d7e4cd5271040fe5430ec2e7951081a43ad6a3d91aaf1a97ada6` |
| 24 | `lemma` | [pow_mul_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/pow-mul-mem-factorednumbers.md) | 189 | `result-track:05165fa4a62f668190fb639afede59602e38639ddd467677ee64dc1ef75babdf` |
| 25 | `lemma` | [Prime.factoredNumbers_coprime](../../../../NumberTheory/SmoothNumbers.lean/declarations/prime-factorednumbers-coprime.md) | 201 | `result-track:d75b440f7eb5177f91c8228cb9855113a6519b441a826c0a5d9da508132a3f28` |
| 26 | `lemma` | [factoredNumbers.map_prime_pow_mul](../../../../NumberTheory/SmoothNumbers.lean/declarations/factorednumbers-map-prime-pow-mul.md) | 209 | `result-track:643681d9ef10611d4a78707cb8b6345c2fa4f395d6bdeff0c86eff945ada7778` |
| 27 | `def` | [equivProdNatFactoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatfactorednumbers.md) | 219 | `declaration-track:b449188f4c47758c423f1ecf9b56fff285c0b0c199a7338bee3d5fcab5b0fa70` |
| 28 | `lemma` | [equivProdNatFactoredNumbers_apply](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 258 | `result-track:d257e0d46c225e060dd81ed14120e380fb76356d3215d2e39210c03c19b278f6` |
| 29 | `lemma` | [equivProdNatFactoredNumbers_apply'](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatfactorednumbers-apply.md) | 263 | `result-track:818016a1244f901738adf0acd89650829ef09695e7e3a36c73302c73822411f5` |
| 30 | `def` | [smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers.md) | 274 | `declaration-track:733e63e8c0f5b20ffc52fcc32d1d58b06e6772921ab7587cbd04dd693e4cd172` |
| 31 | `lemma` | [mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers.md) | 276 | `result-track:ac98fc7b905c4f6d4ebc135565d30f9641d60933c36f47deec7f8d900f4dcd95` |
| 32 | `lemma` | [smoothNumbers_eq_factoredNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-eq-factorednumbers.md) | 280 | `result-track:f93584635152bc230f4246cd3bd7f45897efe738efa6e91e9f5d42c9664c9274` |
| 33 | `lemma` | [smmoothNumbers_eq_factoredNumbers_primesBelow](../../../../NumberTheory/SmoothNumbers.lean/declarations/smmoothnumbers-eq-factorednumbers-primesbelow.md) | 286 | `result-track:e4d671545d048edf569664733efabefbba7f9fece0c877cbd874af0afc40cb92` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SmoothNumbers.lean/declarations/instance-source-edition-2.md) | 294 | `declaration-track:7f4d8e3986e9102be632e410dc1f3d2c496d14ceada44a29cac1a7a2c6b9e86b` |
| 35 | `lemma` | [mem_smoothNumbers_of_dvd](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-of-dvd.md) | 298 | `result-track:51abf637aaedad02b31421463395be8b8d708eb360c79395276760d774579807` |
| 36 | `lemma` | [mem_smoothNumbers_iff_forall_le](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-iff-forall-le.md) | 305 | `result-track:02decc7061072bece8b25ed7e663cc18e0fb1cf8fb420aa26dbdb791ca801f1e` |
| 37 | `lemma` | [mem_smoothNumbers'](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-source-edition-2.md) | 310 | `result-track:c7c614c7b10086ef196335a866860b385d8274f6b83b5d9822c3cca076e277c9` |
| 38 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/primefactors-subset-of-mem-smoothnumbers.md) | 315 | `result-track:d0dffa8e4da82298d801436a79ab4a365cdbb99c4077ef520bfc63a85ea013c7` |
| 39 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-of-primefactors-subset.md) | 321 | `result-track:39bc0c4384230709e991603322a2e3a9076c8eb840b8a92133d58d26e8094573` |
| 40 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 327 | `result-track:82ff2c0cbe8526170e9dc66b05c9fd9e31f271f31e9fba75e157297698b752da` |
| 41 | `lemma` | [ne_zero_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/ne-zero-of-mem-smoothnumbers.md) | 333 | `result-track:d9d6791a49584e379b855879e8c355e2832feb4a5b98ca91854590d0cf57c83f` |
| 42 | `lemma` | [smoothNumbers_zero](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-zero.md) | 336 | `result-track:5c70232402e0f0aa924ca24ffed658bcc470d9aeade71f7a127a27de2bf6349e` |
| 43 | `theorem` | [mul_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/mul-mem-smoothnumbers.md) | 340 | `result-track:c3c29c9b8c5c7f4cc3337aa69da089b6db37f4a8b4599ad9017c5a6ac885f104` |
| 44 | `lemma` | [prod_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/prod-mem-smoothnumbers.md) | 346 | `result-track:92bbc025d03a1d9aa8de1f16bc0a44b0f387ada5006f79b8539938ab41be39d3` |
| 45 | `lemma` | [smoothNumbers_succ](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-succ.md) | 352 | `result-track:fc8c3247ffea0857690a2f806aed1a4ba80d3a10356e3bf95b7109fc622296c8` |
| 46 | `lemma` | [smoothNumbers_one](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-one.md) | 355 | `result-track:d1f48310f56c0749e6e3c93549ba04bec8277260554689d97734172bb7dab1d2` |
| 47 | `lemma` | [smoothNumbers_mono](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-mono.md) | 358 | `result-track:aeb389cf9fefe1070b94087349bc7034bfa43daf94a83666476729205db2319b` |
| 48 | `lemma` | [mem_smoothNumbers_of_lt](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbers-of-lt.md) | 362 | `result-track:de8e6c3d522b10ac770e7c9e230504832c44190e14b7bfa667fd03bbcdd5c1c5` |
| 49 | `lemma` | [smoothNumbers_compl](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbers-compl.md) | 367 | `result-track:0899493349d0334641ac40687e17fd890ea449e25b8837f48a5f4ddcf1603034` |
| 50 | `lemma` | [pow_mul_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/pow-mul-mem-smoothnumbers.md) | 372 | `result-track:e8d5e3db42ec6d5171087a5ee1c20c944a8080fca139b5824f0e35abb8b57448` |
| 51 | `lemma` | [Prime.smoothNumbers_coprime](../../../../NumberTheory/SmoothNumbers.lean/declarations/prime-smoothnumbers-coprime.md) | 384 | `result-track:2c7f25f54bd146415167bd7b0cdffbfb19a418ae2e70dceeb42050c2c04600d6` |
| 52 | `lemma` | [map_prime_pow_mul](../../../../NumberTheory/SmoothNumbers.lean/declarations/map-prime-pow-mul.md) | 391 | `result-track:bb86a6b49c994d746a18648747576f11ca0f0f24345855103c94cc8239f77bdb` |
| 53 | `def` | [equivProdNatSmoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatsmoothnumbers.md) | 401 | `declaration-track:d65aceb800d5b224a1fcc0f39ae32ee45163e669cf93d3342c47c3e900041f24` |
| 54 | `lemma` | [equivProdNatSmoothNumbers_apply](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatsmoothnumbers-apply.md) | 408 | `result-track:be0015ad0ee1f05bf039d6f53043d6e47c5aae88e4185d5636053882508a0742` |
| 55 | `lemma` | [equivProdNatSmoothNumbers_apply'](../../../../NumberTheory/SmoothNumbers.lean/declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 412 | `result-track:c1c2b018ec4c57e795972a6e6b329a37e92b90d70e8f93b15526859ba6295e77` |
| 56 | `def` | [smoothNumbersUpTo](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbersupto.md) | 424 | `declaration-track:7651e3859553c956c828e5774367f9a048f25127bfcf187d637403b6fcaaa8bb` |
| 57 | `lemma` | [mem_smoothNumbersUpTo](../../../../NumberTheory/SmoothNumbers.lean/declarations/mem-smoothnumbersupto.md) | 427 | `result-track:db4858217f9b42014f258145cb47c3d015b51e91a47f56d8777d2d491a7426d5` |
| 58 | `def` | [roughNumbersUpTo](../../../../NumberTheory/SmoothNumbers.lean/declarations/roughnumbersupto.md) | 432 | `declaration-track:bdcc6ea8dbd2fac32e28449ee7a0f60f22fb7f8907ee87360020c4a4a550315a` |
| 59 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 435 | `result-track:a696393a67e229fe955d4c91995eea7ce714c84186e35883018b934063fdb9d0` |
| 60 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbers.lean/declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 450 | `result-track:4907cda77307a0fd04ed20f3a2f5d7b31db03e5d82057c100c3b63abb691dc3c` |
| 61 | `lemma` | [smoothNumbersUpTo_subset_image](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbersupto-subset-image.md) | 466 | `result-track:47098068cd1fb3bac078b81f881a3aa36833df3f3baf1a622b85b114b8de2244` |
| 62 | `lemma` | [smoothNumbersUpTo_card_le](../../../../NumberTheory/SmoothNumbers.lean/declarations/smoothnumbersupto-card-le.md) | 485 | `result-track:079b1a34e2e3265c3c5f28525f39005d323f271232019627cfd54f0caf486983` |
| 63 | `lemma` | [roughNumbersUpTo_eq_biUnion](../../../../NumberTheory/SmoothNumbers.lean/declarations/roughnumbersupto-eq-biunion.md) | 494 | `result-track:60d87f8aa29fe5e7bbd88ac1c2e12635f03091292993b888356f35b9328b4710` |
| 64 | `lemma` | [roughNumbersUpTo_card_le](../../../../NumberTheory/SmoothNumbers.lean/declarations/roughnumbersupto-card-le.md) | 517 | `result-track:e727df28e36261b5538db8acf7c1989e83f3ce773f8e9fb549275cd6e6cc3f4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=471f991fe32076ac2cac59cc990e90b5054ab44a572d7192dcd6efc165e664c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
