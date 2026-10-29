import Mathematics.Boolean.Absorption
import Mathematics.Boolean.Corpus

/-!
# Boolean absorption corpus links

Absorption and left commutation form one small proof neighborhood above the
elementary bounded-lattice identities.
-/

namespace Mathematics.Boolean.AbsorptionCorpus

open Mathematics
open Mathematics.Discovery

private def theoremLink
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (sourceDigest : Digest)
    (sourceDigest_valid : sourceDigest.Valid)
    (target : String)
    (target_nonempty : target ≠ "") :
    CorpusSubsumptionLink :=
  Corpus.lawsModule.subsumption
    { value := "ideas:boolean-laws:absorption:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .theorem
    sourceDigest
    sourceDigest_valid
    target
    target_nonempty
    .theoremReconstruction
    "Derive the retained law from the canonical distributive lattice."

def joinAbsorption := theoremLink
  10 "join_absorb" (by decide)
  { value := "aa9eb2585706f6ade05af2d3c31ac4027e5931b220d90b1de8dfcac2da226b94" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.join_absorption" (by decide)

def meetAbsorption := theoremLink
  11 "meet_absorb" (by decide)
  { value := "e53ed8433593c6a437b891d8fe8a628984ccc0f169ee02a62b88042c2f2402cc" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.meet_absorption" (by decide)

def joinLeftCommutative := theoremLink
  12 "join_left_comm" (by decide)
  { value := "97047373785d68bd54ad4d82ac3136690fbdb3b52390a6c1f6c8844885dfccde" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.join_left_commutative" (by decide)

def meetLeftCommutative := theoremLink
  13 "meet_left_comm" (by decide)
  { value := "a9d3bebe557598b52ad9f6a14fd7df4c21af6740888491e94182056d64063616" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.meet_left_commutative" (by decide)

def links : List CorpusSubsumptionLink := [
  joinAbsorption,
  meetAbsorption,
  joinLeftCommutative,
  meetLeftCommutative
]

@[simp] theorem links_length : links.length = 4 := by decide

end Mathematics.Boolean.AbsorptionCorpus
