# Verification target: Lie Quotient Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9743601e0cebb9ad0bfd043f7195660de91b70b2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9743601e0cebb9ad0bfd043f7195660de91b70b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/instance.md) | 46 | `declaration-track:62f791585e39481c454c6c4dbd70c70a60edf787a91f6fca9a39b3230fcf85e5` |
| 2 | `instance` | [addCommGroup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/addcommgroup.md) | 53 | `declaration-track:ddcd4ee3d55e5a4f65e2bebcf204980e46c11c5f1ec2ef87ccee67058ec0d6f2` |
| 3 | `instance` | [module'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/module-source-edition-2.md) | 56 | `declaration-track:990de8f73877a3e4a1503df9d48b232861d9910c5af29a14099794b7be359d03` |
| 4 | `instance` | [module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/module.md) | 60 | `declaration-track:05f712acf9b995b9846e114e4bc9cfc53443af542fd043ab0dea561d204236a8` |
| 5 | `instance` | [isCentralScalar](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/iscentralscalar.md) | 63 | `declaration-track:d5c94069a6275000348c288a686981ad58f35cef9407bd34ad219922110895e2` |
| 6 | `instance` | [inhabited](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/inhabited.md) | 68 | `declaration-track:74beb21708195c500fa573ff642dc84976fc3476659d692eee520231f05770b0` |
| 7 | `abbrev` | [mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk-source-edition-2.md) | 73 | `declaration-track:ede4e701d0408e2ed50867cc05e63f22ccf86286dba38428120609fbc051614d` |
| 8 | `theorem` | [mk_eq_zero'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk-eq-zero-source-edition-2.md) | 77 | `result-track:4560f377dec0fac8a5eeff2e89d3e3e51c652742e10f921cb8f16d76a76f0232` |
| 9 | `theorem` | [is_quotient_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/is-quotient-mk.md) | 80 | `result-track:58bc4f6e66910094af69eab870c296dc78adead9e10ab7f5e319d69d26d0f7ca` |
| 10 | `def` | [lieSubmoduleInvariant](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liesubmoduleinvariant.md) | 87 | `declaration-track:014a746811781eefdc2039e343031e754e4f7293b5c8353d532b0ba00c337ebf` |
| 11 | `def` | [actionAsEndoMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/actionasendomap.md) | 96 | `declaration-track:cfc3fc44e31c88cea49b06a20c0ae8276cc273ff10a5fad4468b3972ff031e11` |
| 12 | `instance` | [actionAsEndoMapBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/actionasendomapbracket.md) | 104 | `declaration-track:772f154800cedb67f7d8aa41123456419e905449111b3b07a46113d92ce0f4b9` |
| 13 | `instance` | [lieQuotientLieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liequotientlieringmodule.md) | 107 | `declaration-track:babc227cbe81c3aff941ab0fd14bc2f801831d594b8e820957199e3e2653e8c0` |
| 14 | `instance` | [lieQuotientLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liequotientliemodule.md) | 111 | `declaration-track:532f15bbc0eb67cd701aecfaa235b56b25d4329ce84614f4777f2fb1a991ec1a` |
| 15 | `instance` | [lieQuotientHasBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liequotienthasbracket.md) | 114 | `declaration-track:d0653464a6c64c1a1ffde78ac026626a902a889177dff9e1fc1aec020ab49126` |
| 16 | `theorem` | [mk_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk-bracket.md) | 129 | `result-track:8ad644ca4a9a7d5d770ccaaf334367058a4e7bd15d9a13484bb2b45015925df4` |
| 17 | `instance` | [lieQuotientLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liequotientliering.md) | 132 | `declaration-track:bd9e12da7c38d3aba1cdc7b9a1cf20cdca18902c93609ac05ad91047235e0a49` |
| 18 | `instance` | [lieQuotientLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liequotientliealgebra.md) | 162 | `declaration-track:a18ed41d92bd1620fe652c606c52f9a0cdfb3c628bd21e7a60cb8f6b4fbb7f4e` |
| 19 | `def` | [mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk.md) | 174 | `declaration-track:8c665e3423e5e39bfb6cb95920810326bce0b503db1397f4dc4c8e667b9d3914` |
| 20 | `theorem` | [surjective_mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/surjective-mk.md) | 180 | `result-track:bf5a7039f6245ca0638083d8357f588bce0e9c2822f754f57f38dc6c17ccc419` |
| 21 | `theorem` | [range_mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/range-mk.md) | 183 | `result-track:3f4e5a9a3afecea4960af0c216b62161c640884ba621fed9e02169dbbbfea5e5` |
| 22 | `instance` | [isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/isnoetherian.md) | 186 | `declaration-track:f8e017a02d8258e3ac82b6cd7ba5d57487facda8ccaa6ecd813481c44761549e` |
| 23 | `theorem` | [mk_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk-eq-zero.md) | 189 | `result-track:189f811992fe34fe79aff1f5f7deeaa9cfa413a4132e71e5c649a87b11bbb5bf` |
| 24 | `theorem` | [mk'_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/mk-ker.md) | 193 | `result-track:25067b986b4970c3436f22da6acc332195f5adf0fb21c689dd928120c0f25f40` |
| 25 | `theorem` | [map_mk'_eq_bot_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/map-mk-eq-bot-le.md) | 196 | `result-track:d961526a8bc51492fc28dbca4e2cb59513e8b9c3d136521c0cd86643c1b185a8` |
| 26 | `theorem` | [lieModuleHom_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/liemodulehom-ext.md) | 204 | `result-track:1c9a83c6be978bfec69d65b7bb5a7718b7821e571bf425811f43e722c416b161` |
| 27 | `lemma` | [toEnd_comp_mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/toend-comp-mk.md) | 207 | `result-track:8bc0445d45820f5459298805cc091033d4a8e38e0781fe7c3e3bf14e5aceef84` |
| 28 | `def` | [quotKerEquivRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientPublic.lean/declarations/quotkerequivrange.md) | 224 | `declaration-track:2085ed496599619f32a478a4719fa9f2f209cc9083a9f2b8e57573cb6dfcb9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=890d8e31cad0618c7239180c8fe6910ca8e7f4a37bff9b7854970aec4566e111 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
