# Verification target: Unique Factorization Domain Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff43708e5be15f293a85076e7e453edd2cb5c4c2",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff43708e5be15f293a85076e7e453edd2cb5c4c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/of-wfdvdmonoid-associates.md) | 40 | `result-track:657f8827fa5f998b9d0a79e6128c5b826530ca153a3d7b29933a6051f7425f0d` |
| 2 | `instance` | [wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/wfdvdmonoid-associates.md) | 45 | `declaration-track:c09b5bf2269c3f702ce869a5b959592c9e3fba9c9f4856192228f6e988477c0c` |
| 3 | `theorem` | [wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/wellfoundedlt-associates.md) | 48 | `result-track:e92d14056f0f9c237f4ad7f3ada26570f759145919a09467247b9c9ce3a32c05` |
| 4 | `theorem` | [WfDvdMonoid.of_wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/wfdvdmonoid-of-wellfoundedlt-associates.md) | 53 | `result-track:ef7f7198d2c8ffe4c90302c9ab2c77f4ae0cfe7da16a815c17e4a546520c6b75` |
| 5 | `theorem` | [WfDvdMonoid.iff_wellFounded_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/wfdvdmonoid-iff-wellfounded-associates.md) | 61 | `result-track:d51438bf71079c70d24bdfc184a72f88c5f88bf1199eea2764942d3f36f0d6e1` |
| 6 | `instance` | [Associates.ufm](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/associates-ufm.md) | 65 | `declaration-track:da1638d76fbbe0344d3aa1a6f35396fb484ff1e04a98469cc9790ffec03c42dd` |
| 7 | `theorem` | [prime_factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/prime-factors-unique.md) | 72 | `result-track:21899a7935e97d9a7dc5de118a0b5a1ac888c517adb6cfbe49457d28b624fb1e` |
| 8 | `theorem` | [factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-unique.md) | 102 | `result-track:cb068a51df9f133f7e0034e328db6f1f5993f7916d0b186088f32522c04ca4be` |
| 9 | `theorem` | [prime_factors_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/prime-factors-irreducible.md) | 111 | `result-track:c47da7a7e257a0fc7625ffb864486a8f643f660e93a960fc8f635632b30e7b59` |
| 10 | `theorem` | [irreducible_iff_prime_of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/irreducible-iff-prime-of-existsunique-irreducible-factors.md) | 132 | `result-track:f9848f962a680d088e5df60d3f655882023c036c5f6d2593450d41e25c6faedd` |
| 11 | `theorem` | [factors_one](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-one.md) | 181 | `result-track:7885c1109935a4a8b5aee893208fa25411a44d5f9dc248d8ddc42f57732a56a6` |
| 12 | `theorem` | [exists_mem_factors_of_dvd](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/exists-mem-factors-of-dvd.md) | 188 | `result-track:b098db9ec86f7774e92cacb74516e4eba258cf3a04ca3372608eb426b8f1ee38` |
| 13 | `theorem` | [exists_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/exists-mem-factors.md) | 204 | `result-track:0bf3a49d22b6c7457ec35e569a415c23c8dfea9456b9412c0cc3d2dc0912871c` |
| 14 | `theorem` | [factors_mul](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-mul.md) | 210 | `result-track:256aafc4731071a12e0a0de486cf752b6964f98f1389c75f5011be11e5854774` |
| 15 | `theorem` | [factors_pow](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-pow.md) | 220 | `result-track:744a4bad5365ddc883a5967b21e3ab4216718cbdc2b060f53b83e79fd69ffbd4` |
| 16 | `theorem` | [factors_pos](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-pos.md) | 233 | `result-track:5ec8c3cbb2580744fb2df7251958dd31f24e4fdb7385e36c4a3d6ad0d55eeac4` |
| 17 | `theorem` | [factors_pow_count_prod](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-pow-count-prod.md) | 245 | `result-track:8b44fd025dc5b851bf48132a26ed72f7850759fa8a87df8a1467026565299d9d` |
| 18 | `theorem` | [factors_rel_of_associated](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/factors-rel-of-associated.md) | 253 | `result-track:205194f1f1f70746da7a30ebb6966cb79f0e26ebc57623a5d2b41e54088043e0` |
| 19 | `theorem` | [unique'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/unique.md) | 270 | `result-track:642dc9c56e136662de7b4b9a90a5a8bc8a8ff6257b2b0dc56209e10baa2025ba` |
| 20 | `theorem` | [prod_le_prod_iff_le](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/prod-le-prod-iff-le.md) | 281 | `result-track:0687de3d3d31a90e2585619c97f52667aa4d031d05baf45842f491116f48e94c` |
| 21 | `theorem` | [WfDvdMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/wfdvdmonoid-of-exists-prime-factors.md) | 303 | `result-track:049faa9761f7f546ffc36efceda2f53191b2bd23e733fe7e1abbb3d2f30e99da` |
| 22 | `theorem` | [irreducible_iff_prime_of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/irreducible-iff-prime-of-exists-prime-factors.md) | 342 | `result-track:d1fe457f4213cbd6942b7d1724b9eed07356a1ef995f9dc0a05737e4864e3378` |
| 23 | `theorem` | [UniqueFactorizationMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/uniquefactorizationmonoid-of-exists-prime-factors.md) | 351 | `result-track:fa2f1b76b3b8cc87a4b57758cc96581dabcf0e449af231b569e57099f31b28c6` |
| 24 | `theorem` | [UniqueFactorizationMonoid.iff_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/uniquefactorizationmonoid-iff-exists-prime-factors.md) | 357 | `result-track:459a7733e91d91ff3dcee1dc87da40fc8a714692cdbda09e3f4533ba9455c6c0` |
| 25 | `theorem` | [MulEquiv.uniqueFactorizationMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/mulequiv-uniquefactorizationmonoid.md) | 367 | `result-track:f8b1af90674b287d83ab21ecda43cfb74469f3de58128e3b1578e7d960328a4d` |
| 26 | `theorem` | [MulEquiv.uniqueFactorizationMonoid_iff](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/mulequiv-uniquefactorizationmonoid-iff.md) | 385 | `result-track:254d58483b3e768d0541c99c4296b6155c64b0da4a0d07c600312b1f51e965f1` |
| 27 | `theorem` | [of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/of-existsunique-irreducible-factors.md) | 393 | `result-track:3f1437a35fe54636eb6d406ee1592fe45efd0d8d550221c1314631b9f0c38cf8` |
| 28 | `theorem` | [isRelPrime_iff_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/isrelprime-iff-no-prime-factors.md) | 410 | `result-track:5fe97b6a3cfa42b8f3989a1406b3659bb3f0958b0b3818791cc3233ae12b2da7` |
| 29 | `theorem` | [dvd_of_dvd_mul_left_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/dvd-of-dvd-mul-left-of-no-prime-factors.md) | 417 | `result-track:b12325ec03bf24ae2654bb2a51ad5f22091bd6aec3396cea115fe6bdcac01f8b` |
| 30 | `theorem` | [dvd_of_dvd_mul_right_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/dvd-of-dvd-mul-right-of-no-prime-factors.md) | 423 | `result-track:f0ddffc2b628e0f5dad7c14569ffe305778dcfc90445e915fd02730281ebeb47` |
| 31 | `theorem` | [exists_reduced_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/exists-reduced-factors-source-edition-2.md) | 429 | `result-track:b178db91ff5248cd7655830510288332ba8be941c29410981f73af7719868708` |
| 32 | `theorem` | [exists_reduced_factors'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasic.lean/declarations/exists-reduced-factors.md) | 457 | `result-track:81b8e940fa0cb183c9abfb1ea2d9871c5c67abe29e3d3316a9a44194cf0e971f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a1803ffdef91eb0ecaf2959c50be8cf36b5a2a6582781124fc65ce18691aa99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant40b9690c661feaf2a41bba54ed40ea2c1df34eeba7bd203af438a76aa67a1642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
