# Verification target: Integral Closure Algebra Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d48d7f6ca96bdee4f2cb908eec2f30baee439c4d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d48d7f6ca96bdee4f2cb908eec2f30baee439c4d`.

Source path: `GRWTSK/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subalgebra.isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/subalgebra-isintegral-iff.md) | 31 | `result-track:0579020adbcf6903913db342838e8d86e238276798e950f69cdd02b9b4de4807` |
| 2 | `theorem` | [Algebra.IsIntegral.of_injective](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algebra-isintegral-of-injective.md) | 40 | `result-track:5e6b641a5c500c925d3bb75b10f4e83f602b5e472381e6e5a77a7bcd059c306c` |
| 3 | `theorem` | [Algebra.IsIntegral.of_surjective](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algebra-isintegral-of-surjective-source-edition-2.md) | 45 | `result-track:fa326d68cb54015450ad25d18f4b3f5e9a3f77e9d1fa7f7109af6c77c3eeb2eb` |
| 4 | `theorem` | [AlgEquiv.isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algequiv-isintegral-iff.md) | 49 | `result-track:d32bd09d808ba659b83524b073b7c8b7ca10ec0bbaaf851a0bdf68b7e03c1908` |
| 5 | `instance` | [Module.End.isIntegral](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/module-end-isintegral.md) | 54 | `declaration-track:eba7a0f4e76152571e41481ca9305954a6f3ae96ee3cb7d265c0391935e7523b` |
| 6 | `theorem` | [IsIntegral.of_finite](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-finite.md) | 60 | `result-track:879f43e45f008a36022baf77161ec59ac6a39cf7e25f922a0864e3f7f0d3cde7` |
| 7 | `theorem` | [isIntegral_of_noetherian](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-noetherian.md) | 64 | `result-track:9ed3eda8dd1c8c4a8987e0787c59e29888c4837047d0074137a7147c3c28ef69` |
| 8 | `instance` | [Algebra.IsIntegral.of_finite](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algebra-isintegral-of-finite.md) | 68 | `declaration-track:914a2d23f3a3481e75d19d4c26b0b2c1aaeb94af7c75e3eb6071f6a68208be8f` |
| 9 | `lemma` | [Algebra.isIntegral_of_surjective](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algebra-isintegral-of-surjective.md) | 71 | `result-track:4c0c1a4cdca33ed1b266c4baad812b4e477d7a3607e211543395a598638b303b` |
| 10 | `theorem` | [IsIntegral.of_mem_of_fg](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-mem-of-fg.md) | 77 | `result-track:752cdf4c9bf4223cff0a57f0bb57d41a2948c39b469fdab42e890aedf14d2c7e` |
| 11 | `theorem` | [isIntegral_of_submodule_noetherian](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-submodule-noetherian.md) | 82 | `result-track:678543bd0ba371a5ad87f3b37e93822215098d190678c512711bc3e93aed2f92` |
| 12 | `theorem` | [isIntegral_of_smul_mem_submodule](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-smul-mem-submodule.md) | 88 | `result-track:e9380e7a9871cc86ef5bc4dea87319bbfcd467103a10fbe62764947449c4a1f9` |
| 13 | `theorem` | [RingHom.Finite.to_isIntegral](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-finite-to-isintegral.md) | 130 | `result-track:ca35173679301c40b41e8e274a5b198bb11bcc0f120cdcd86d9d937fcb38aeab` |
| 14 | `theorem` | [RingHom.IsIntegralElem.of_mem_closure](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-of-mem-closure.md) | 138 | `result-track:2d89477af0c81f5b33d2219a03af8609d20a45cf41f5ea4bc00be2617e0fd928` |
| 15 | `theorem` | [IsIntegral.of_mem_closure](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-mem-closure.md) | 147 | `result-track:91649107b511bf21f5520a18f90ca18589dc3d204256f0f4c343be8558c8d263` |
| 16 | `theorem` | [RingHom.IsIntegralElem.add](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-add.md) | 153 | `result-track:32ab8087ff1e9ef652299f22158305cdd85e97795ef3fb37346ef278e76c9aa1` |
| 17 | `theorem` | [IsIntegral.add](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-add.md) | 159 | `result-track:ed90ba263ff8a288f4fbf081afdbfeb82fced095703c80f19e87c6bb5f8ce7f2` |
| 18 | `theorem` | [RingHom.IsIntegralElem.neg](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-neg.md) | 166 | `result-track:893ce52fa877e865861a47ea4aaacafd48e72aaef4d13ba5253f3575a1251d0e` |
| 19 | `theorem` | [RingHom.IsIntegralElem.of_neg](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-of-neg.md) | 169 | `result-track:da153b9a6edc606cc2c459e50ac7d57e0c8e747e6c6e09816b1fcf08edc6de0a` |
| 20 | `theorem` | [RingHom.IsIntegralElem.neg_iff](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-neg-iff.md) | 173 | `result-track:d73b591205c26c4c312a87682f1775180ffc01bbe0a3ecf4bf1bfb97a09a8bfd` |
| 21 | `theorem` | [IsIntegral.neg](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-neg.md) | 176 | `result-track:ab627bb6b12eccbe94c5fb308fe6bed77de381e2b146ef147a3205e1c659b93e` |
| 22 | `theorem` | [IsIntegral.of_neg](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-of-neg.md) | 179 | `result-track:e15104b891c2ff441815f3fdfdd10c684613b5697afff70dae9be6ccc299de76` |
| 23 | `theorem` | [IsIntegral.neg_iff](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-neg-iff.md) | 183 | `result-track:a586ba11c518bc31af83736fd94b4ade24294aa310f4e92451dc1fc9fcba60d5` |
| 24 | `theorem` | [RingHom.IsIntegralElem.sub](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-sub.md) | 186 | `result-track:25c68ae03d0a60a79fff527ad3061e4fa4019f3b35cfa0dab064b70cc810e822` |
| 25 | `theorem` | [IsIntegral.sub](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-sub.md) | 190 | `result-track:45052ac9a614c19e734afd6e56cb5410cf0d8c6e39baa1e6e58d71be62fc11ea` |
| 26 | `theorem` | [RingHom.IsIntegralElem.mul](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/ringhom-isintegralelem-mul.md) | 194 | `result-track:25c4f9b1e268f2d46a15e21d092b7a17e88b4ebad6bffe6e34fe28efcfd12eaa` |
| 27 | `theorem` | [IsIntegral.mul](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-mul.md) | 199 | `result-track:c0c7e6443a658bcca5d63fc51c26bb9011a9e1f088e7c2c286c8eba53d0e382a` |
| 28 | `theorem` | [IsIntegral.smul](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/isintegral-smul.md) | 203 | `result-track:455c1f8ca387b8d2d1dfdd45b88ce175fd63fffdc02c3cb290f9ddb01f064216` |
| 29 | `def` | [integralClosure](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/integralclosure.md) | 211 | `declaration-track:13493e5ba0e0005fef9e7d5d91d5b992d56ff1db91251cbdb1ec810f1ee9d4d5` |
| 30 | `theorem` | [mem_integralClosure_iff](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/mem-integralclosure-iff.md) | 219 | `result-track:3f215a858cc19c88b3d37b2bc096f51c9a59b4cb9ed5915e91497d7657963bd5` |
| 31 | `instance` | [Algebra.IsIntegral.prod](../../../../CommutativeAlgebra/IntegralClosureAlgebraBasic.lean/declarations/algebra-isintegral-prod.md) | 225 | `declaration-track:1e162bf5a123201711723c1545af37e45ac5c3f8ac3da642a290cf2eb946e31e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23184b83df18bf54f67e5cd7b56c112b883031b0409cd709e42d02ba851c2ce0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
