files=(docs/*.png)
step=500                # 每 500 张一批
for ((i=0;i<${#files[@]}; i+=step)); do
    git add "${files[@]:i:step}"
    git commit -m "Batch $((i/step+1))"
    git push origin main
done
