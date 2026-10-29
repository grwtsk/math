# Strengthen Instance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `247afe24c58c8f41931d12c972fe5b35132a5b4d` · SHA-256 `5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq Lean Meta

class Semigroup (M) extends Mul M where
  mul_assoc {a b c : M} : (a*b)*c = a*(b*c)
export Semigroup (mul_assoc)

def maybeReassoc {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) :
    MetaM (Option Q($a*($b*$b) = ($a*$b)*$b)) := do
  let .some inst ← trySynthInstanceQ q(Semigroup $M) | return none
  assertInstancesCommute
  return some q(by rw [mul_assoc])

def maybeReassocAlt {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) :
    MetaM (Option Q($a*($b*$b) = ($a*$b)*$b)) := do
  let .some inst ← trySynthInstanceQ q(Semigroup $M) | return none
  assumeInstancesCommute
  return some q(by rw [mul_assoc])

def maybeReassocPure {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) (semigroup : Q(Semigroup $M)) :
    Q($a*($b*$b) = ($a*$b)*$b) :=
  assumeInstancesCommute'
  q(by rw [mul_assoc])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=debd636469542f0f1060cb5422930cf5a1f9ff1a8ec343c63a00cafc3560296b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/StrengthenInstance/Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
