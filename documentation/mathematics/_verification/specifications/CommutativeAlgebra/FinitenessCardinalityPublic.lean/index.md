# Verification target: Finiteness Cardinality Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d92c280ec5a4b826c5cf1c9c4ea342e723080354",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d92c280ec5a4b826c5cf1c9c4ea342e723080354`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.lean.json)

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
| 1 | `theorem` | [Submodule.fg_iff_exists_fin_linearMap](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/submodule-fg-iff-exists-fin-linearmap.md) | 31 | `result-track:664117874d3792b2e25dc2c4e9bc75fcc670fc9cf46569edfa56b6ceb8dac0b5` |
| 2 | `theorem` | [AddSubmonoid.fg_iff_exists_fin_addMonoidHom](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/addsubmonoid-fg-iff-exists-fin-addmonoidhom.md) | 36 | `result-track:b104889e159ffbc074969ef6b0af508652f392664da8f8296b74a9dbe5207b39` |
| 3 | `theorem` | [AddSubgroup.fg_iff_exists_fin_addMonoidHom](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/addsubgroup-fg-iff-exists-fin-addmonoidhom.md) | 44 | `result-track:c278ec81c3a1609ebc414c2443c3e234e66b7314e2d62bbed95ecf32a8c3b043` |
| 4 | `lemma` | [exists_fin'](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/exists-fin.md) | 59 | `result-track:0a4c83752351485e4ccc912ec0d4fc7643285a448e3f38957deba28100d388ce` |
| 5 | `theorem` | [exists_fin_quot_equiv](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/exists-fin-quot-equiv.md) | 64 | `result-track:511e8b03ebaa7de8d797659cb4972442d81590017f94df89255d2a799f37fd43` |
| 6 | `lemma` | [_root_.Module.finite_of_finite](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/root-module-finite-of-finite.md) | 72 | `result-track:373d034a6639e91d521971ed98b5a19fdbf11bd75ef5944c01b6bd822da2ecab` |
| 7 | `lemma` | [_root_.Module.finite_iff_finite](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/root-module-finite-iff-finite.md) | 78 | `result-track:9ac5f49c8769122495afd4c5c7c295dc14f8bc46d181b66155df08d287425188` |
| 8 | `lemma` | [_root_.Set.Finite.submoduleSpan](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/root-set-finite-submodulespan.md) | 82 | `result-track:3eee74838c767ca970f355be10229e5b49f66f8181e664de54a2fc6800cb9b5b` |
| 9 | `lemma` | [finite_basis](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/finite-basis.md) | 90 | `result-track:3923eb2e36b3ceee836f9f84d1d7f42deebf4bc321a38478a620b616589bf1f9` |
| 10 | `lemma` | [not_finite_of_infinite_basis](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/not-finite-of-infinite-basis.md) | 99 | `result-track:0514b371bf67b71bfd67220062c989b9fe015728e7b1d7ce109896ad5d9a759a` |
| 11 | `def` | [kerRepr](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/kerrepr.md) | 118 | `declaration-track:457f102b09dcc1c58f4f3713db0aaf93c38ec6c9211f86297a45c46e91091539` |
| 12 | `abbrev` | [repr](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/repr-source-edition-2.md) | 121 | `declaration-track:7de49a33427891098081bb6a48a66ca51c5fabfae2250fa5a3ebe88f17e89896` |
| 13 | `def` | [reprEquiv](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/reprequiv-source-edition-2.md) | 124 | `declaration-track:9898ee75ef8e09d569f2918df8e8197b67938302ff1f551b66b3e81c4d5d158c` |
| 14 | `def` | [kerReprₛ](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/kerrepr-source-edition-2.md) | 135 | `declaration-track:7c13cec7bfd04d2a8ac376a67ca2c35867bc5e9930ca13fd802c4ea245ba0ffe` |
| 15 | `abbrev` | [reprₛ](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/repr.md) | 139 | `declaration-track:61b2e0719342b5ac4512cd9562fbe33553e522716545e59d25baccbcce46069d` |
| 16 | `def` | [reprEquivₛ](../../../../CommutativeAlgebra/FinitenessCardinalityPublic.lean/declarations/reprequiv.md) | 142 | `declaration-track:14296fdbeb16f380c72efd49e54fd6999b68046ed54946cad46689380cbf122a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63e8b40445f5a75d4f4f2c0f6cbf28c969d15bcb5304640e58734d5d206bca76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Cardinality/Variant808833f0748ffa443763b92903926591cbac4d982b6cc64907aa70249bf3ddb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
