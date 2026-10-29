# Verification target: Differential Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf4e9ba14157f7bd6461b60dbff39770dccad1b2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf4e9ba14157f7bd6461b60dbff39770dccad1b2`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv.md) | 29 | `declaration-track:2159ff06521f812da95295f443c1017ff2dc4f6121b6a09a7929a29cc646cf51` |
| 2 | `lemma` | [logDeriv_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-zero.md) | 32 | `result-track:2ec6e1732b5c02530fd956c1b69507c3e5c788c2377ac43f8d34d2b4a513a71b` |
| 3 | `lemma` | [logDeriv_one](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-one.md) | 36 | `result-track:bf92d5e856e54d3cbe2304d6cad8e0f7f55bdafd3573d6c720d12c10502c9409` |
| 4 | `lemma` | [logDeriv_mul](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-mul.md) | 39 | `result-track:ee7eee489ef8bbaaa10f24d0e401fa0a727404ae33e9667f79052df51485754e` |
| 5 | `lemma` | [logDeriv_div](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-div.md) | 44 | `result-track:72d16a38a346fa68fc1e502efac2a67b5685cf428bebc0f6f4fa455954c79044` |
| 6 | `lemma` | [logDeriv_pow](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-pow.md) | 49 | `result-track:edca5db5d51daa8e8be0cc474871837a04e71ca7ab39663a97c6dbf5e8a90a3c` |
| 7 | `lemma` | [logDeriv_eq_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-eq-zero.md) | 58 | `result-track:56c68c38aa0b26ab727402d1b59532cfbd5b26dce7998bd49818e9513e8c1770` |
| 8 | `lemma` | [logDeriv_multisetProd](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-multisetprod.md) | 62 | `result-track:009efde5548ae62b61cefc49a00d51705462d5d7bd72125dbedcb7ce95fec0cb` |
| 9 | `lemma` | [logDeriv_prod](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-prod.md) | 74 | `result-track:3c82225863c7284f53d747046a61ed5c8ec500b602dc136d02ad81b59d31334f` |
| 10 | `lemma` | [logDeriv_prod_of_eq_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-prod-of-eq-zero.md) | 77 | `result-track:63dd18e1ee2d275343929ac441f51de3046d04325a402890456489490710ddfa` |
| 11 | `lemma` | [logDeriv_algebraMap](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/logderiv-algebramap.md) | 82 | `result-track:e37db18f3e7b1029f94821f9974a406b36427896718ec7463fb479ce93bacfdd` |
| 12 | `lemma` | [_root_.algebraMap.coe_logDeriv](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/root-algebramap-coe-logderiv.md) | 89 | `result-track:5f1d2b318d57192579406f861ff1410878500c91feb9a2cfda36360fb20855a3` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:4092cccdd44afd54701a2c800f8f46c99631ea6e8b928b1167e6f267ab753b59` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:d93c447005681a444a06619fc23223a5b0374fd33d18ac3daf550ccc11be6622` |
| 15 | `def` | [differentialFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/differentialfinitedimensional.md) | 136 | `declaration-track:ca423b6577eae7ad65ca5d5bd2878a8bb02f49c61b02f50f7f069c863bd6cb01` |
| 16 | `lemma` | [differentialAlgebraFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/differentialalgebrafinitedimensional.md) | 146 | `result-track:00690d6dd5782f00f38111d2b74ed8442e6dc26e8aafa2eece78cabe0f9d80e8` |
| 17 | `def` | [uniqueDifferentialAlgebraFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/uniquedifferentialalgebrafinitedimensional.md) | 161 | `declaration-track:277f36e6f10dfc4f28db8e84daa04816b4f909f30905bd35b04b7053f92027af` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/instance-source-edition-3.md) | 182 | `declaration-track:b9810226ff54eda83ee662f408e6bb5842e33b7260725a2a369dc52be5a234de` |
| 19 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/instance.md) | 185 | `declaration-track:1138354fb27037109d2b1406633987d25ae935ba183c0bd5132cc695a33ebd42` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicPublic.lean/declarations/instance-source-edition-5.md) | 188 | `declaration-track:f847298bdf05de631bd2f082a2458949f2f66d1fc9eea7a49e1b5f150792fa4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8e11d75f811f7981b4d8deb3fded1d8ba09ffe3e46eb341e38b7d122935c496 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/Basic/Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Basic/Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
