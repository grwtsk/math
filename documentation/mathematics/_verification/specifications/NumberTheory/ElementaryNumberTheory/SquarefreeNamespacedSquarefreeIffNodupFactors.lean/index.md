# Verification target: Squarefree Namespaced Squarefree Iff Nodup Factors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a`.

Source path: `GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squarefree_iff_nodup_factors](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-nodup-factors.md) | 37 | `result-track:b8a54f9ccb2f941a0a44bb3ee636e3c4bffda1e0555214e6be86ee386b3d0412` |
| 2 | `theorem` | [Squarefree.nodup_factors](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-nodup-factors.md) | 44 | `result-track:1971f54d6a890555d87bc333bbfea4ad32f4ce286e116a1d4f265250a2e555f0` |
| 3 | `theorem` | [squarefree_iff_prime_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-prime-squarefree.md) | 49 | `result-track:fe808357b1cf8e5032efa6daf172e4e552aa8e28728c338b2a71ffaa16f55754` |
| 4 | `theorem` | [Squarefree.factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-factorization-le-one.md) | 53 | `result-track:6513121cd15952d335f7fa840bf75d87c56a29b3f315ae2ff62178e7186a97a6` |
| 5 | `theorem` | [squarefree_of_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-of-factorization-le-one.md) | 67 | `result-track:7c1d8a93a3d193299e826a695de49aeccccffacb59aec446d87e45109c21e6c6` |
| 6 | `theorem` | [squarefree_iff_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-factorization-le-one.md) | 75 | `result-track:edf7f8b623b84bbce3932f7f229c8730d8cc1243592cf78a9da9cce7d718e144` |
| 7 | `theorem` | [Squarefree.ext_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-ext-iff.md) | 80 | `result-track:9e8aa64755a18df9269b2ed8ea65aaa1fb700e7e82f8af94ee4cc2012a8776f8` |
| 8 | `theorem` | [squarefree_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-pow-iff.md) | 98 | `result-track:0e23b1aaf9da97de5cfa22dadeaa6ff0b1f7cb1f7e8cac6a4ba10a87750d3929` |
| 9 | `theorem` | [squarefree_and_prime_pow_iff_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-and-prime-pow-iff-prime.md) | 110 | `result-track:842ba5dc46ca7222020de70b8b5cf881dbe77dfe965d30753387986968ad2603` |
| 10 | `def` | [minSqFacAux](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfacaux.md) | 120 | `declaration-track:7725339ead4d2aed0a3c1f6a951c542062e89c0fa73b572fb979c4715c905845` |
| 11 | `def` | [minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfac.md) | 137 | `declaration-track:6cd994a7112c467f7489d47ddd930b4a332370eba4feaa375e3790fc0567f045` |
| 12 | `def` | [MinSqFacProp](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfacprop.md) | 147 | `declaration-track:f3bb24622a6bae6244869118306486564c2c990d0ec1a6b54c5e0806d152987e` |
| 13 | `theorem` | [minSqFacProp_div](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfacprop-div.md) | 152 | `result-track:7b36fd3860dd59fbc814a05be291697d796d437519bc32debe983079f6f16a85` |
| 14 | `theorem` | [minSqFacAux_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfacaux-has-prop.md) | 169 | `result-track:ee6f9027fb3e155c67ab9901c685bc369929888204121461f031ff5f329b6fe4` |
| 15 | `theorem` | [minSqFac_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfac-has-prop.md) | 210 | `result-track:6054a943d7fc2ee7469c848c4f99cbc9a4b744e2e80d68402cb78b3dbff1e22a` |
| 16 | `theorem` | [minSqFac_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfac-prime.md) | 230 | `result-track:51f5291c6df363336b7e635a9a1348fc17d67c06ce36c66a37937d30c609ebaf` |
| 17 | `theorem` | [minSqFac_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfac-dvd.md) | 236 | `result-track:45dfff05e5f8dd4a257fd4699f59ad15927ae9f2fec2e7721323447c1d96ef17` |
| 18 | `theorem` | [minSqFac_le_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/minsqfac-le-of-dvd.md) | 242 | `result-track:412b292a08d4ae54eeef6bfe7d7c93be0bf67afc275ef0f198ed0be824532f63` |
| 19 | `theorem` | [squarefree_iff_minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-minsqfac.md) | 251 | `result-track:7e8fa66d00bb019d4c7998e4a73087a43081c0eeec5a4728ce798b40bd4cfdc0` |
| 20 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/instance.md) | 261 | `declaration-track:dc75ee60a9aae2dc4db4f707adfc3b0b978a6519407ab226274179c0a2ea0df5` |
| 21 | `theorem` | [squarefree_two](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-two.md) | 264 | `result-track:fba6f639cc9f46710f2c0f3df71ef6d35b4a9146ab074f960df20ae8cd0d189f` |
| 22 | `theorem` | [divisors_filter_squarefree_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/divisors-filter-squarefree-of-squarefree.md) | 268 | `result-track:50cb9122ce6a500566b10a64722e5eeaf01e133bd204abba60b5fae57a627ea1` |
| 23 | `theorem` | [divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/divisors-filter-squarefree.md) | 275 | `result-track:b9577f16a9922df999eac5186ab74334f8f43909a43146ca6b4a9a5e55ee7943` |
| 24 | `theorem` | [sum_divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/sum-divisors-filter-squarefree.md) | 328 | `result-track:8259c408a84312364a571a5a8917e12600a4b4a471f25f6cc0959193c1a23e9b` |
| 25 | `theorem` | [sq_mul_squarefree_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree-of-pos-source-edition-2.md) | 337 | `result-track:83f04bf82dc15d7a332ca68beb922dafddbacc25b9ef2f5d79ce068890e0d736` |
| 26 | `theorem` | [sq_mul_squarefree_of_pos'](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree-of-pos.md) | 366 | `result-track:62911b44d296a9c00ad107381d63bb34d9db81b78d9fdcff42892e12df7032ce` |
| 27 | `theorem` | [sq_mul_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree.md) | 372 | `result-track:6828ef091f43529d4d01a728c28ad6ea3f8722658891285429e048d62ff3e082` |
| 28 | `theorem` | [squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-mul.md) | 382 | `result-track:4c195f475f84c46ed937833485a5dd236f69d967f2ed6aac3b2dc799343e1443` |
| 29 | `theorem` | [coprime_of_squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/coprime-of-squarefree-mul.md) | 389 | `result-track:638b603a6ace994d5bb2b793fac8e638bed8ce54ec1dd9b5a17f5fd70f8eb7d1` |
| 30 | `theorem` | [squarefree_mul_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/squarefree-mul-iff.md) | 392 | `result-track:f57944aba5d2b7a112e6d9db305017526cf5df3e22c22fcc0315cd88bd43bf95` |
| 31 | `theorem` | [prod_factors_toFinset_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeNamespacedSquarefreeIffNodupFactors.lean/declarations/prod-factors-tofinset-of-squarefree.md) | 397 | `result-track:45f9b381dec9e8ab305ed872a6f5f5cd85b01352330e2002214f1cfc3c18e28e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6581764b808cfa436f9bc9f107cd05288b9d72cc262d33586fe9e00c9285ce7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
