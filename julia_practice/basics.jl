function make_pt()
    return rand(2) * 2 .- 1
end

function mc_pi(num_pts::Int)
    num_inside = 0
    for i in 1:num_pts
        pt = make_pt()
        if pt[1]^2 + pt[2]^2 <= 1
            num_inside += 1
        end
    end
    return 4 * num_inside / num_pts
end

println("Result: ", mc_pi(100000))
