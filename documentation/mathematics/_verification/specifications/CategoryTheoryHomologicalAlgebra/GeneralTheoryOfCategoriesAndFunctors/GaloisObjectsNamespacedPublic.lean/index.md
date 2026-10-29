# Verification target: Galois Objects Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ea5a93d39a16d9084fb2d3a65f9009c65fcb51d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant72009b1af386d447712330921a242a9aedb0b2389f8500b24e07a35acb550e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ea5a93d39a16d9084fb2d3a65f9009c65fcb51d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant72009b1af386d447712330921a242a9aedb0b2389f8500b24e07a35acb550e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant72009b1af386d447712330921a242a9aedb0b2389f8500b24e07a35acb550e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/instance.md) | 50 | `declaration-track:31118276eaee92e80ddcf328b31ed603aee03b100a901a9757d2ac86ee9a9502` |
| 2 | `class` | [IsGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/isgalois.md) | 56 | `declaration-track:685314c2f0ffcf920e1bdfaeff8c18d7a3e20ac7916c7e6c20494ca3953fa251` |
| 3 | `instance` | [autMulFiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmulfiber.md) | 63 | `declaration-track:aedd8b9c346d799f04a8655108ab3ba5ba0e0cc25e724717d11ee1722be2b04c` |
| 4 | `def` | [quotientByAutTerminalEquivUniqueQuotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/quotientbyautterminalequivuniquequotient.md) | 76 | `declaration-track:b902fedd0318f032b26f7adc3539493cf472825e729f1e2e3c9720bef754cd7c` |
| 5 | `lemma` | [isGalois_iff_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/isgalois-iff-aux.md) | 89 | `result-track:f3622fcd9f8b6e0be768efd6b8769e3b7dfaf51826f8219a25cc3b47f562dab0` |
| 6 | `theorem` | [isGalois_iff_pretransitive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/isgalois-iff-pretransitive.md) | 95 | `result-track:2acf475304f1b47c093531ed7c5fe2d5d2252484ae8a49120b608fe9d5d27912` |
| 7 | `def` | [isTerminalQuotientOfIsGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/isterminalquotientofisgalois.md) | 101 | `declaration-track:5f90a1735571ede5ebeb83d264318bf20d6f162af2f3a8bb7c92580475028536` |
| 8 | `instance` | [isPretransitive_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/ispretransitive-of-isgalois.md) | 107 | `declaration-track:b0dd7a53d054c58ae7ae5f0a827644e0a0a319206aa2cefbe4ba81a9ff083d66` |
| 9 | `lemma` | [stabilizer_normal_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/stabilizer-normal-of-isgalois.md) | 112 | `result-track:2a16de16a895363fe034e3cfe39f44d0548c0c043b6681aa2fa0028f08661165` |
| 10 | `theorem` | [evaluation_aut_surjective_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/evaluation-aut-surjective-of-isgalois.md) | 123 | `result-track:7efb8b0078b63f41321af05ff684e419261cfd06e724fdf22bd54315d7fb7e80` |
| 11 | `theorem` | [evaluation_aut_bijective_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/evaluation-aut-bijective-of-isgalois.md) | 127 | `result-track:6e6753f611e252c1c24181856b69642b119d563855e32df5226f0a17ad92aa87` |
| 12 | `def` | [evaluationEquivOfIsGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/evaluationequivofisgalois.md) | 132 | `declaration-track:7e13f99b6c9f45187549210e567447a246e78ce2c5201cee441301c1abe60867` |
| 13 | `lemma` | [evaluationEquivOfIsGalois_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/evaluationequivofisgalois-apply.md) | 136 | `result-track:10e5f89aa6bd9ddddaf4f3f8d9c14f1a5167e7624313856de4c855e7258576c1` |
| 14 | `lemma` | [evaluationEquivOfIsGalois_symm_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/evaluationequivofisgalois-symm-fiber.md) | 141 | `result-track:bab5e489640e269546ee7701c65cf9d19cec481ddb2e8b77ad8b8829eceacec7` |
| 15 | `lemma` | [exists_autMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/exists-autmap.md) | 150 | `result-track:aea3a10ead9d361aa7fa36bd49585f221ce194172ee8760bedd6557acda8ed7a` |
| 16 | `def` | [autMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap.md) | 164 | `declaration-track:c3b2e1c446b36d1b6740d1efe28d1ef748b52b9b97dfa142118b9f5716aca659` |
| 17 | `lemma` | [comp_autMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/comp-autmap.md) | 169 | `result-track:b176a337de044194c8fd078a045a7b4617c947d7599f6a1395e63168b5d4fd2e` |
| 18 | `lemma` | [comp_autMap_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/comp-autmap-apply.md) | 174 | `result-track:953004057d92d30f01746efa359df002f0d841422715df24b02a248754581768` |
| 19 | `lemma` | [autMap_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap-unique.md) | 180 | `result-track:b2d676fa00c21e347a2e3ee15a65ed5224a83cb9f693bae7df4edd0ab9284253` |
| 20 | `lemma` | [autMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap-id.md) | 186 | `result-track:927f817f804242f1f393101b78cc7e8af61bee2806859bad5a384684dd351521` |
| 21 | `lemma` | [autMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap-comp.md) | 190 | `result-track:1eb5a1d8123c198ce4e064a7e85dde64b5bc1f891d91a35ce0f396db01000414` |
| 22 | `lemma` | [autMap_surjective_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap-surjective-of-isgalois.md) | 197 | `result-track:d756ee71f7756c93f9ba252c35c74bfafda3fa412d732060b8ae2c3c388ac45f` |
| 23 | `lemma` | [autMap_apply_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmap-apply-mul.md) | 210 | `result-track:6715f57ce42de98e65b95228b4250b543d99535ba1a5a40d4952496e62d28467` |
| 24 | `def` | [autMapHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisObjectsNamespacedPublic.lean/declarations/autmaphom.md) | 219 | `declaration-track:f97c3c1b6b1c49ce0742647be3e40671d9b0434fd5b412b99a92456ecd20c72b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6a8deefc024b73b12c0e3b0bb3ca53a71d174e9d253f053fd514f0d524caa71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant72009b1af386d447712330921a242a9aedb0b2389f8500b24e07a35acb550e08.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant72009b1af386d447712330921a242a9aedb0b2389f8500b24e07a35acb550e08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
